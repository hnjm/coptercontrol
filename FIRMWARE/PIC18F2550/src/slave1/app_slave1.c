#define _XTAL_FREQ 4000000
#define USE_AND_MASKS

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "system.h"

#include "spi_r.h"
#include "pwm_r.h"

unsigned char cArr[2];

void APP_tick() {
    while(!SPI_R_DataRdySPI()) ;
    cArr[0] = SPI_R_getcSPI(); // read a single byte
     while(!SPI_R_DataRdySPI()) ;
    cArr[1] = SPI_R_getcSPI(); // read a single byte

    PWM_R_setPWM1(cArr[0]); // left
    PWM_R_setPWM2(cArr[1]); // right
}

