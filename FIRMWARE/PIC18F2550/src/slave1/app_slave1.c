#define _XTAL_FREQ 4000000
#define USE_AND_MASKS

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "system.h"

#include "spi_r.h"
#include "pwm_r.h"

void APP_tick() {
    while(!SPI_R_DataRdySPI())
        ;

        unsigned char cArr[2];
        SPI_R_getsSPI(&cArr, 2);

        unsigned int p1 = cArr[0];
        unsigned int p2 = cArr[1];

        PWM_R_setPWM1(p1); // left
        PWM_R_setPWM2(p2); // right
    
}

