# Infotainment System

A real-time infotainment system, composed by a **server**, a Raspberry Pi, that displays the sound and media, and sends information about it; and a **client**, an Arduino Mega 2560, that process the user inputs to send them to the server, and receive the information send by it to display it on the LCD screen.

## Objective

The objective is to replicate an infotainment system similar to the one found in modern vehicles, capable of processing user requests and playing MP3/MP4 files. This project is part of the TE2003B course Design of systems on chip at Monterrey Institute of Technology.

## Installation

1. Download and install the [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide).
2. Install [Raspberry Pi Imager](https://www.raspberrypi.com/software/) to install the Raspberry Pi OS or desired OS on your Raspberry Pi.
3. This step is optional, If you desire to have remote access to your Raspberry Pi desktop you can install [RealVNC Viewer](https://www.realvnc.com/en/connect/download/viewer/).

## Usage

1. On MPLAB X IDE, import the project folder *Reto.X*.
2. *Build* and *Run* on the ATmega2560.
3. On your Raspberry Pi, run the *main.py*.

## Scheme

<img src="https://i.ibb.co/88cdpKR/infotainment-system.png" alt="infotainment-system" width="auto" height="400">

demo: https://youtu.be/lWQy58l9hYc
