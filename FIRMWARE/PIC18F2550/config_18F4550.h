#ifndef CONFIG_18F2550_H
#define	CONFIG_18F2550_H

// ------------------------------------------------------ fixed_address_momory.h
#define FIXED_ADDRESS_MEMORY
#define HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS  0x500
#define HID_CUSTOM_IN_DATA_BUFFER_ADDRESS   0x540

// ------------------------------------------current adc/buttons/leds. h/c files
//                                                      legacy HardwareProfile.h


//-------------------------------------------------------------------------- LED

#define mInitAllLEDs()      LATB &= 0x00; TRISB = 0x00;
#define mLED_1              LATBbits.LATB0
#define mLED_2              LATBbits.LATB1
#define mLED_3              LATBbits.LATB2

#define mGetLED_1()         mLED_1
#define mGetLED_2()         mLED_2
#define mGetLED_3()         mLED_3

#define mLED_1_On()         mLED_1 = 1;
#define mLED_2_On()         mLED_2 = 1;
#define mLED_3_On()         mLED_3 = 1;

#define mLED_1_Off()        mLED_1 = 0;
#define mLED_2_Off()        mLED_2 = 0;
#define mLED_3_Off()        mLED_3 = 0;

#define mLED_1_Toggle()     mLED_1 = !mLED_1;
#define mLED_2_Toggle()     mLED_2 = !mLED_2;
#define mLED_3_Toggle()     mLED_3 = !mLED_3;

//----------------------------------------------------------------------- SWITCH

#define mInitSwitch()       TRISBbits.TRISB4=1;TRISBbits.TRISB5=1;
#define mGetSwitch()        !PORTBbits.RB4

//------------------------------------------------------------------------- POTI
#define mInitPoti()         TRISAbits.TRISA0 = 1;
#define mGetPoti()          PORTAbits.RA0

void initADC(void);
#define initCLKPLL()    // not used for 4550

#endif	/* CONFIG_18F2550_H */

