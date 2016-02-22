#define TMR2PRESCALE 16

#include <xc.h>

void PWM_R_setPWM1(unsigned int val) {
    CCP1CONbits.DC1B0 = (val & 0x01); val >>= 1; //Least Significant bit
    CCP1CONbits.DC1B1 = (val & 0x01); val >>= 1; // 2nd Least Significant bit
    CCPR1L = val;
}

void PWM_R_setPWM2(unsigned int val) {
    CCP2CONbits.DC2B0 = (val & 0x01); val >>= 1; //Least Significant bit
    CCP2CONbits.DC2B1 = (val & 0x01); val >>= 1; // 2nd Least Significant bit
    CCPR2L = val;
}

void PWM_R_OpenPWM() {
    // Set the PWM period by writing to the PR2 register.
    PR2 = 0xFF;

    PWM_R_setPWM1(0xFF);
    PWM_R_setPWM2(0xFF);

    // Make the CCPx pin an output by clearing the appropriate TRIS bit.
    TRISCbits.RC1 = 0; //PWM pin set as output
    TRISCbits.RC2 = 0; //PWM pin set as output

    // Set the TMR2 prescale value, then enable Timer2 by writing to T2CON.
    #if TMR2PRESCALE == 1
        T2CKPS0 = 0;
        T2CKPS1 = 0;
    #elif TMR2PRESCALE == 4
        T2CKPS0 = 1;
        T2CKPS1 = 0;
    #elif TMR2PRESCALE == 16
        T2CKPS0 = 1;
        T2CKPS1 = 1;
    #endif
    TMR2ON = 1;

    // Configure the CCPx module for PWM operation.
    CCP1M3 = 1;
    CCP1M2 = 1;

    CCP2M3 = 1;
    CCP2M2 = 1;
}

