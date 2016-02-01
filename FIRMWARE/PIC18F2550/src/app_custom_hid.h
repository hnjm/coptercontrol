/* 
 * File:   app_custom_hid.h
 * Author: vsk hs-ulm
 *
 * Created on 5. Mai 2014, 13:30
 */
#ifndef CUSTOM_HID_H
#define	CUSTOM_HID_H

//------------------------------------------- P U B L I C    P R O T O T Y P E S
void APP_CustomHIDInitialize(void);     // legacy
void APP_CustomHIDTasks(void);          // legacy ProcessIO()

void APP_USBCBSuspend(void);            // empty ;-)
void APP_USBCBWakeFromSuspend(void);    //
void APP_USBCB_SOF_Handler(void);       //
void APP_USBCBErrorHandler(void);       //
void APP_USBCBStdSetDscHandler(void);   //

#endif	/* CUSTOM_HID_H */

