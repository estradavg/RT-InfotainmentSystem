/*
    FreeRTOS V8.0.0 - Copyright (C) 2014 Real Time Engineers Ltd.

    VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.

    ***************************************************************************
     *                                                                       *
     *    FreeRTOS provides completely free yet professionally developed,    *
     *    robust, strictly quality controlled, supported, and cross          *
     *    platform software that has become a de facto standard.             *
     *                                                                       *
     *    Help yourself get started quickly and support the FreeRTOS         *
     *    project by purchasing a FreeRTOS tutorial book, reference          *
     *    manual, or both from: http://www.FreeRTOS.org/Documentation        *
     *                                                                       *
     *    Thank you!                                                         *
     *                                                                       *
    ***************************************************************************

    This file is part of the FreeRTOS distribution.

    FreeRTOS is free software; you can redistribute it and/or modify it under
    the terms of the GNU General Public License (version 2) as published by the
    Free Software Foundation >>!AND MODIFIED BY!<< the FreeRTOS exception.

    >>! NOTE: The modification to the GPL is included to allow you to distribute
    >>! a combined work that includes FreeRTOS without being obliged to provide
    >>! the source code for proprietary components outside of the FreeRTOS
    >>! kernel.

    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.  Full license text is available from the following
    link: http://www.freertos.org/a00114.html

    1 tab == 4 spaces!

    ***************************************************************************
     *                                                                       *
     *    Having a problem?  Start by reading the FAQ "My application does   *
     *    not run, what could be wrong?"                                     *
     *                                                                       *
     *    http://www.FreeRTOS.org/FAQHelp.html                               *
     *                                                                       *
    ***************************************************************************

    http://www.FreeRTOS.org - Documentation, books, training, latest versions,
    license and Real Time Engineers Ltd. contact details.

    http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
    including FreeRTOS+Trace - an indispensable productivity tool, a DOS
    compatible FAT file system, and our tiny thread aware UDP/IP stack.

    http://www.OpenRTOS.com - Real Time Engineers ltd license FreeRTOS to High
    Integrity Systems to sell under the OpenRTOS brand.  Low cost OpenRTOS
    licenses offer ticketed support, indemnification and middleware.

    http://www.SafeRTOS.com - High Integrity Systems also provide a safety
    engineered and independently SIL3 certified version for use in safety and
    mission critical applications that require provable dependability.

    1 tab == 4 spaces!
*/

#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

#include "freeRTOSBoardDefs.h"

// And on to the things the same no matter the AVR type...
#define configUSE_PREEMPTION		    1
#define configUSE_IDLE_HOOK		        0
#define configUSE_TICK_HOOK		        0
#define configUSE_TICKLESS_IDLE			0
#define configUSE_TRACE_FACILITY	    0
#define configUSE_16_BIT_TICKS		    1
#define configUSE_MUTEXES               1
#define configUSE_RECURSIVE_MUTEXES     0
#define configUSE_COUNTING_SEMAPHORES   0
#define configUSE_QUEUE_SETS			0
#define configUSE_ALTERNATIVE_API       0
#define configIDLE_SHOULD_YIELD		    1
#define configQUEUE_REGISTRY_SIZE	    0
#define configCHECK_FOR_STACK_OVERFLOW  1
#define configMAX_PRIORITIES		    ( ( UBaseType_t ) 4 )
#define configMINIMAL_STACK_SIZE	    ( ( UBaseType_t ) 85 )
#define configMAX_TASK_NAME_LEN		    ( 8 )

/* Timer definitions. */
#define configUSE_TIMERS				0
#define configTIMER_TASK_PRIORITY       ( ( UBaseType_t ) 7 )
#define configTIMER_QUEUE_LENGTH        ( ( UBaseType_t ) 10 )
#define configTIMER_TASK_STACK_DEPTH    configMINIMAL_STACK_SIZE

/* Co-routine definitions. */
#define configUSE_CO_ROUTINES 		    0
#define configMAX_CO_ROUTINE_PRIORITIES ( (UBaseType_t ) 2 )

/* Set the stack pointer type to be uint16_t, otherwise it defaults to unsigned long */
#define portPOINTER_SIZE_TYPE			uint16_t

/* Set the following definitions to 1 to include the API function, or zero
to exclude the API function. */

#define INCLUDE_vTaskPrioritySet		        0
#define INCLUDE_uxTaskPriorityGet		        0
#define INCLUDE_vTaskDelete			            0
#define INCLUDE_vTaskCleanUpResources		    0
#define INCLUDE_vTaskSuspend			        1
#define INCLUDE_vResumeFromISR                  1
#define INCLUDE_vTaskDelayUntil			        1
#define INCLUDE_vTaskDelay			            1
#define INCLUDE_xTaskGetSchedulerState          0
#define INCLUDE_xTaskGetCurrentTaskHandle       0
#define INCLUDE_uxTaskGetStackHighWaterMark     1

#endif /* FREERTOS_CONFIG_H */
