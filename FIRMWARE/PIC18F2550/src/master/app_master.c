#define _XTAL_FREQ 4000000
#define USE_AND_MASKS

#include <stdio.h>
#include <stdlib.h>
#include "usb.h"
#include "usb_device_hid.h"
#include <string.h>
#include "system.h"

#include "spi_r.h"
#include "pwm_r.h"


/** VARIABLES ******************************************************/
/* Some processors have a limited range of RAM addresses where the USB module
 * is able to access.  The following section is for those devices.  This section
 * assigns the buffers that need to be used by the USB module into those
 * specific areas.
 */
#if defined(FIXED_ADDRESS_MEMORY)
    #if defined(COMPILER_MPLAB_C18)
        #pragma udata HID_CUSTOM_OUT_DATA_BUFFER = HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS
        unsigned char ReceivedDataBuffer[64];
        #pragma udata HID_CUSTOM_IN_DATA_BUFFER = HID_CUSTOM_IN_DATA_BUFFER_ADDRESS
        unsigned char ToSendDataBuffer[64];
        #pragma udata

    #else defined(__XC8)
        unsigned char ReceivedDataBuffer[64] @ HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS;
        unsigned char ToSendDataBuffer[64] @ HID_CUSTOM_IN_DATA_BUFFER_ADDRESS;
    #endif
#else
    unsigned char ReceivedDataBuffer[64];
    unsigned char ToSendDataBuffer[64];
#endif

volatile USB_HANDLE USBOutHandle;    
volatile USB_HANDLE USBInHandle;


typedef enum {
    COMMAND_TOGGLE_LED = 0x80,
    COMMAND_PWM = 0x54,
    COMMAND_GET_BUTTON_STATUS = 0x81,
    COMMAND_READ_POTENTIOMETER = 0x37
} CUSTOM_HID_DEMO_COMMANDS;

void APP_DeviceCustomHIDInitialize() {
    //initialize the variable holding the handle for the last transmission
    USBInHandle = 0;

    //enable the HID endpoint
    USBEnableEndpoint(CUSTOM_DEVICE_HID_EP, USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);

    //Re-arm the OUT endpoint for the next packet
    USBOutHandle = (volatile USB_HANDLE)HIDRxPacket(CUSTOM_DEVICE_HID_EP,(uint8_t*)&ReceivedDataBuffer,64);
}

uint16_t currIddlePwm1 = 0;
uint16_t currIddlePwm2 = 0;
uint16_t currIddlePwm3 = 0;
uint16_t currIddlePwm4 = 0;

uint8_t LeftRight[2];
uint8_t Left;
uint8_t Right;

void APP_iddle() {
    PWM_R_setPWM1(currIddlePwm1); // front
    PWM_R_setPWM2(currIddlePwm2); // back

    // Send Left & right to slave 18F2550 by SPI
    Left = currIddlePwm3;
    Right = currIddlePwm4;
    LeftRight[0] = (Left >=  0 && Left <= 255) ? Left : 256;
    LeftRight[1] = (Right >=  0 && Right <= 255) ? Right : 256;
    SPI_R_putsSPI(LeftRight);

    for(unsigned char n=0; n < 1; n++)
        __delay_ms(50);
    
    
    currIddlePwm1++;
    currIddlePwm2++;
    currIddlePwm3++;
    currIddlePwm4++;
    if(currIddlePwm1 == 256) currIddlePwm1 = 0;
    if(currIddlePwm2 == 256) currIddlePwm2 = 0;
    if(currIddlePwm3 == 256) currIddlePwm3 = 0;
    if(currIddlePwm4 == 256) currIddlePwm4 = 0;
}



void APP_tick() {
    if(HIDRxHandleBusy(USBOutHandle) == false) {
        switch(ReceivedDataBuffer[0]) {
            /*case 0x80:  //Toggle LEDs command
                //LED_Toggle(LED_USB_DEVICE_HID_CUSTOM);
                break;*/

            case 0x54:
                PWM_R_setPWM1(ReceivedDataBuffer[1]); // front
                PWM_R_setPWM2(ReceivedDataBuffer[2]); // back

                // Send Left & right to slave 18F2550 by SPI
                Left = ReceivedDataBuffer[3];
                Right = ReceivedDataBuffer[4];
                LeftRight[0] = (Left >=  0 && Left <= 255) ? Left : 256;
                LeftRight[1] = (Right >=  0 && Right <= 255) ? Right : 256;
                SPI_R_putsSPI(LeftRight);

                break;
                
            /*case 0x81:  //Get push button state
                //Check to make sure the endpoint/buffer is free before we modify the contents
                if(!HIDTxHandleBusy(USBInHandle)) {
                    ToSendDataBuffer[0] = 0x81;				//Echo back to the host PC the command we are fulfilling in the first uint8_t.  In this case, the Get Pushbutton State command.
                    if(BUTTON_IsPressed(BUTTON_USB_DEVICE_HID_CUSTOM) == false) {
                        //pushbutton not pressed, pull up resistor on circuit board is pulling the PORT pin high
                        ToSendDataBuffer[1] = 0x01;
                    } else {
                        //sw3 must be == 0, pushbutton is pressed and overpowering the pull up resistor
                        ToSendDataBuffer[1] = 0x00;
                    }
                    //Prepare the USB module to send the data packet to the host
                    USBInHandle = HIDTxPacket(CUSTOM_DEVICE_HID_EP, (uint8_t*)&ToSendDataBuffer[0],64);
                }
                break;

            case 0x37:
                {
                    uint16_t pot;

                    //Check to make sure the endpoint/buffer is free before we modify the contents
                    if(!HIDTxHandleBusy(USBInHandle)) {
                        //Use ADC to read the I/O pin voltage.  See the relevant HardwareProfile - xxxxx.h file for the I/O pin that it will measure.
                        //Some demo boards, like the PIC18F87J50 FS USB Plug-In Module board, do not have a potentiometer (when used stand alone).
                        //This function call will still measure the analog voltage on the I/O pin however.  To make the demo more interesting, it
                        //is suggested that an external adjustable analog voltage should be applied to this pin.

                        pot = ADC_Read10bit(ADC_CHANNEL_POTENTIOMETER);

                        ToSendDataBuffer[0] = 0x37;  	//Echo back to the host the command we are fulfilling in the first uint8_t.  In this case, the Read POT (analog voltage) command.
                        ToSendDataBuffer[1] = (uint8_t)pot; //LSB
                        ToSendDataBuffer[2] = pot >> 8;     //MSB

                        //Prepare the USB module to send the data packet to the host
                        USBInHandle = HIDTxPacket(CUSTOM_DEVICE_HID_EP, (uint8_t*)&ToSendDataBuffer[0],64);
                    }
                }
                break;*/
        }
        //Re-arm the OUT endpoint, so we can receive the next OUT data packet 
        //that the host may try to send us.
        USBOutHandle = HIDRxPacket(CUSTOM_DEVICE_HID_EP, (uint8_t*)&ReceivedDataBuffer, 64);
    }
}