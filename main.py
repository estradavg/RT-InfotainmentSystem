#!/usr/bin/env python3
#to install the vlc wrapper: pip3 install python-vlc

import vlc #importing vlc module
import serial     #importing serial module


# creating a media player object
media_player = vlc.MediaListPlayer()

#create the instance for the vlc media player
player = vlc.Instance('--aout=alsa')
  
# creating a media list object
media_list = vlc.MediaList()
  
# creating a new media
media_1 = player.media_new("/home/pi/Music/MP4/S1.mp4")
media_2 = player.media_new("/home/pi/Music/MP4/S2.mp4")
media_3 = player.media_new("/home/pi/Music/MP4/S3.mp4")
media_4 = player.media_new("/home/pi/Music/MP4/S4.mp4")

# adding media to media list
media_list.add_media(media_1)
media_list.add_media(media_2)
media_list.add_media(media_3)
media_list.add_media(media_4)

  
# inserting  media to media list at index 0
media_list.insert_media(media_1, 0)
media_list.insert_media(media_2, 1)
media_list.insert_media(media_3, 2)
media_list.insert_media(media_4, 3)
  
# setting media list to the media player
media_player.set_media_list(media_list)

def play():
    #play the audio in the audio player
    media_player.play()
    return 0

def pause():
    # pausing media
    media_player.set_pause(1)
    return 0

def prev():
    # playing previous media in list
    media_player.previous()

def forward():
    # playing next media in list
    media_player.next()

def stop():
    media_player.stop()
    
def description():
    return media_player.video_get_track_description()

def time():
    return media_player.get_time()

#Configure the serial port
ser = serial.Serial( '/dev/ttyACM0',   
                     9600,      #baud rate for serial communication
                     timeout=1, 
                     bytesize=serial.EIGHTBITS,
                     parity=serial.PARITY_NONE,
                     stopbits=serial.STOPBITS_ONE )


while True: #Wait until there is data waiting in the serial buffer
    if (ser.in_waiting > 0):
        #read the 8-bit data and decode to ascii
        line = ser.read().decode("Ascii")
        print(line)
        if line == "1":
            play()
            #ser.write("Playing")
        elif line == "2":
            pause()
            #ser.write("Paused")
        elif line == "3":
            prev()
            #ser.write("Previous")
        elif line == "4":
            forward()
            #ser.write("Forward")
        elif line == "5":
            stop()
    else:
        pass 