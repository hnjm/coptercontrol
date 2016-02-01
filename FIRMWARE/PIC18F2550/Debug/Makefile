###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC18F2550
COMPILER = "MPLAB XC8"
TARGET = Debug
SHELL = C:\WINDOWS\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -G --chip=18F2550 -I..\src
LDFLAGS=--output=mcof -G --chip=18F2550

## Processing Tools
CC=xc8.exe
ASM=xc8.exe
LD=xc8.exe
LIB=xc8.exe
#  F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/Debug.cof: TOOL=LD
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/app_custom_hid.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/app_custom_hid.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/main_hid.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/main_hid.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/system.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/system.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/usb_descriptors.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/usb_descriptors.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/usb_device.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/usb/src/usb_device.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/usb_device_hid.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/src/usb/src/usb_device_hid.c
#     F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/Debug/config_18F2550.p1: TOOL=CC
#        F:/PROJECTS/PROGRAMMING/18F2550-USB-HID-XC8/FIRMWARE/PIC18F2550/config_18F2550.c

# Build tree:
all:	Debug

Debug:	Debug.cof

Debug.cof:	app_custom_hid.p1 main_hid.p1 system.p1 usb_descriptors.p1 usb_device.p1 usb_device_hid.p1 config_18F2550.p1 
	$(LD) $(LDFLAGS)  -O"Debug.cof" "app_custom_hid.p1" "main_hid.p1" "system.p1" "usb_descriptors.p1" "usb_device.p1" "usb_device_hid.p1" "config_18F2550.p1"

app_custom_hid.p1:	../src/app_custom_hid.c 
	$(CC) $(CCFLAGS)  -O"app_custom_hid.p1" "../src/app_custom_hid.c"

main_hid.p1:	../src/main_hid.c 
	$(CC) $(CCFLAGS)  -O"main_hid.p1" "../src/main_hid.c"

system.p1:	../src/system.c 
	$(CC) $(CCFLAGS)  -O"system.p1" "../src/system.c"

usb_descriptors.p1:	../src/usb_descriptors.c 
	$(CC) $(CCFLAGS)  -O"usb_descriptors.p1" "../src/usb_descriptors.c"

usb_device.p1:	../src/usb/src/usb_device.c 
	$(CC) $(CCFLAGS)  -O"usb_device.p1" "../src/usb/src/usb_device.c"

usb_device_hid.p1:	../src/usb/src/usb_device_hid.c 
	$(CC) $(CCFLAGS)  -O"usb_device_hid.p1" "../src/usb/src/usb_device_hid.c"

config_18F2550.p1:	../config_18F2550.c 
	$(CC) $(CCFLAGS)  -O"config_18F2550.p1" "../config_18F2550.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.hxl
	rm -rf Debug.lst
	rm -rf Debug.sym
	rm -rf Debug.obj
	rm -rf Debug.sdb
	rm -rf Debug.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf Debug.hex
	rm -rf app_custom_hid.pre
	rm -rf app_custom_hid.lst
	rm -rf main_hid.pre
	rm -rf main_hid.lst
	rm -rf system.pre
	rm -rf system.lst
	rm -rf usb_descriptors.pre
	rm -rf usb_descriptors.lst
	rm -rf usb_device.pre
	rm -rf usb_device.lst
	rm -rf usb_device_hid.pre
	rm -rf usb_device_hid.lst
	rm -rf config_18F2550.pre
	rm -rf config_18F2550.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cof
	rm -rf app_custom_hid.p1
	rm -rf main_hid.p1
	rm -rf system.p1
	rm -rf usb_descriptors.p1
	rm -rf usb_device.p1
	rm -rf usb_device_hid.p1
	rm -rf config_18F2550.p1

