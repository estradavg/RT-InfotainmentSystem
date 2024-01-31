/*
 * File:   main.c
 * Author: Andres Estrada
 *
 * Created on 4 de junio de 2021, 12:47 PM
 */

#define FOSC 16000000UL// Clock Speed
#define BAUD 9600 //Buad transmision
#define MYUBRR (FOSC/16/BAUD -1)
#define nop asm("nop")

#include <avr/io.h>
#include <util/delay.h>

/* FreeRTOS kernel includes. */

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include <stdio.h>
#include "myprintf.h"
#include <stdlib.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include "lcdpcf8574.h"

const unsigned char keyPad [4][4] = {
	{'1','2','3','A'}, //Rewind, Play/Pause y Forrward
	{'4','5','6','B'},
	{'7','8','9','C'},
	{'*','0','#','D'} 
};

unsigned char key = 0;
unsigned char col, row;

void USART_Init(unsigned int ubrr);
void USART_Transmit( unsigned char data );
unsigned char USART_Receive(void);
void USART_Flush( void );
void keyboarInit(void);
unsigned char Keypad(void);

QueueHandle_t Global_Queue_Handle_1 = 0;
QueueHandle_t Global_Queue_Handle_2 = 0;

void sender_task(void *p);
void receiver_task(void *p);

uint8_t led = 0;
uint8_t lcd_col = 0;
uint8_t lcd_row = 0;


int main( void ) {
	USART_Init( MYUBRR ); /* initialize serial communication */
    lcd_init(LCD_DISP_ON_BLINK);
    uint8_t screen[] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
    lcd_create_custom_char (0,screen);
    
    lcd_home();
    lcd_led(led); 
    lcd_gotoxy(lcd_col,lcd_row);
    
    Global_Queue_Handle_1 = xQueueCreate(16, sizeof(int));
    Global_Queue_Handle_2 = xQueueCreate(16, sizeof(int));

    xTaskCreate( sender_task, (char*) "tx", 1024, NULL, 2,	NULL ); // Envio de datos con mayor prioridad
    xTaskCreate( receiver_task, (char*) "rx", 1024, NULL, 1, NULL ); // Recepción de datos con menor prioridad
	/* Start the tasks and timer running. */
	vTaskStartScheduler();
    return 0;
}

// Task 2
/*
  En esta tarea utilizamos los QueueSend para alojar la entrada de información, tanto 
  del teclado matricial, asi como de los datos que llegan del Raspberry Pi.
 */
void sender_task(void *p){
    unsigned char rpi;
    unsigned char key;
    while (1) {
        //Recibimos los valores enviados desde el keyad al atmega2560
        key = Keypad(); 
        if (key != 0){
            if (!xQueueSend (Global_Queue_Handle_1, &key, (200/portTICK_PERIOD_MS))){ //200
                //myprintf("Failed to receive data from queue\n");
            }
        }
        //Recibimos los valores enviados desde el raspberry pi al atmega2560
        rpi = USART_Receive();
        if(rpi != 0){
            if (!xQueueSend (Global_Queue_Handle_2, &rpi, (100/portTICK_PERIOD_MS))){
                //myprintf("Failed to receive data from queue\n");
            }
        }
        vTaskDelay(100);
    }
}

// Task 1 
/*
  En esta tarea utilizamos los QueueReceive para alojar ye enviar la entrada de información
  en el buffer por parte del RPI, asi como de los datos que se enviaran al lcd.
 */
void receiver_task(void *p){
    unsigned char ard2rpi;
    unsigned char ard2lcd;

    while(1){
        if (xQueueReceive (Global_Queue_Handle_1, &ard2rpi, (200/portTICK_PERIOD_MS))){ //100
            if(ard2rpi != 0){
                USART_Transmit(ard2rpi);
            }
            //myprintf("Failed to send to queue\n");
        }
        if (xQueueReceive (Global_Queue_Handle_2, &ard2lcd, (100/portTICK_PERIOD_MS))){
            if(ard2lcd != 0){
                if(ard2lcd == 13){
                    if(lcd_row = 0){
                        lcd_row++;
                    }
                    else if(lcd_row == 1){
                        lcd_row = 0;
                    }
                    lcd_col = 0;
                    lcd_gotoxy(0,lcd_row);
                }
                else if (ard2lcd == 4){
                    lcd_col = 0;
                    lcd_row = 0;
                    
                }
                else{
                    lcd_putc(ard2lcd);
                    if(lcd_col < 20){
                        lcd_col++;
                    }
                    else if(lcd_col == 19 && lcd_row == 0){
                        lcd_col = 0;
                        lcd_row++;
                    }
                    else{
                        lcd_col = 0;
                        lcd_row = 0;
                    }
                }
            }
            //myprintf("Failed to send to queue\n");
        }
        vTaskDelay(200);
    }
}

/*
   El USART debe inicializarse antes de que pueda  tener lugar  cualquier    comunicación. 
   El proceso de inicialización normalmente consiste en configurar la velocidad en baudios, 
   configurar el formato del marco y habilitar el Transmisor o el Receptor.
 */
void USART_Init( unsigned int ubrr){
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char) ubrr;
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	UCSR0C = (1<<USBS0)|(3<<UCSZ00);
}

/*
   El transmisor USART se  habilita  configurando el  bit de  habilitación de transmisión 
  (TXEN) en el registro UCSR0B. Cuando el transmisor está habilitado, la operación normal 
   del puerto del pin TxDn es anulada por el USART y se le da la función como salida serial 
   del transmisor.
 */
void USART_Transmit( unsigned char data ) {
    while ( !( UCSR0A & (1<<UDRE0)) );
    UDR0 = data;
}

/*
  El receptor USART se habilita escribiendo el bit de habilitación de recepción (RXENn) en el 
  registro UCSR0A en uno. Cuándo el receptor está habilitado, la operación normal del pin del 
  pin RxC0 es anulada por el USART y se le da la función como entrada serial del receptor.
 */
unsigned char USART_Receive( void ) {
    if ( (UCSR0A & (1<<RXC0)) ) return UDR0;
    return 0;
}

/*
  El búfer FIFO del receptor se vaciará cuando el receptor esté desactivado, es decir, el 
  búfer se vaciará de su contenido. Los datos no leídos se perderán. Si el búfer debe 
  vaciarse durante el funcionamiento normal, debido, por ejemplo, a un error condición, 
  lea la ubicación de E / S de UDRn hasta que se borre el indicador RXCn.
 */
void USART_Flush( void ) {
    unsigned char dummy;
    while ( UCSR0A & (1<<RXC0) ) dummy = UDR0;
}
//Inicializamos puertos C para el keypad
void keyboarInit(void){
	PORTC = 0xFF;
	DDRC = 0xF0;
}

/*
  Mandamos los caracteres del keypad al arduino. Esto lo hacemos con la inicialización
  de los puertos en que hemos conectado nuestro teclado matricial, de manera que el
  funcionamiento se basa en identificar de primera instancia  cuando una fila se ha 
  presionado y después cuando la columna se ha presionado, para obtener los caracteres 
  declarados en la matriz KeyPad.
 */
unsigned char Keypad(void){
	while(1){
		PORTC = 0xFF;
		DDRC = 0xF0;
		nop; 
		nop;

		PORTC &= 0x0F;
		nop; 
		nop;
        
		row = PINC & 0x0F;
		if (PINC == 0x0F) return 0;
        _delay_ms(100);
        
		PORTC = 0xEF;
		nop;
		row = PINC & 0x0F;
		if (row != 0x0F){
			col = 0;
			break;
		}
		PORTC = 0xDF;
		nop;
		row = PINC & 0x0F;
		if (row != 0x0F){
			col = 1;
			break;
		}
		PORTC = 0xBF;
		nop;
		row = PINC & 0x0F;
		if (row != 0x0F){
			col = 2;
			break;
		}
		PORTC = 0x7F;
		nop;
		row = PINC & 0x0F;
		if (row != 0x0F){
			col = 3;
			break;
		}
	}

	if (row == 0x0E) {
		return keyPad[0][col];
	}
	else if(row == 0x0D) {
		return keyPad[1][col];
	}
	else if(row == 0x0B) {
		return keyPad[2][col];
	}
	else if(row == 0x07) {
		return keyPad[3][col];
	}
}