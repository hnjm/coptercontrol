#include "plib.h"

void SPI_R_OpenSPI( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase) {
  SSPSTAT &= 0x3F;                // power on state
  SSPCON1 = 0x00;                 // power on state
  SSPCON1 |= sync_mode;           // select serial mode
  SSPSTAT |= smp_phase;           // select data input sample phase

  switch( bus_mode ) {
    case 0:                       // SPI bus mode 0,0
      SSPSTATbits.CKE = 1;        // data transmitted on falling edge
      break;
    case 2:                       // SPI bus mode 1,0
      SSPSTATbits.CKE = 1;        // data transmitted on rising edge
      SSPCON1bits.CKP = 1;        // clock idle state high
      break;
    case 3:                       // SPI bus mode 1,1
      SSPCON1bits.CKP = 1;        // clock idle state high
      break;
    default:                      // default SPI bus mode 0,1
      break;
  }

  switch( sync_mode ) {
    case 4:                       // slave mode w /SS enable
	TRISAbits.TRISA5 = 1;       // define /SS pin as input
        TRISBbits.TRISB1 = 1;       // define clock pin as input
	break;

    case 5:                       // slave mode w/o /SS enable
	TRISBbits.TRISB1 = 1;       // define clock pin as input
	break;

    default:                      // master mode, define clock pin as output
        TRISBbits.TRISB1 = 0;       // define clock pin as output
        break;
  }
  TRISBbits.TRISB0 = 1;       // define SDI pin as input
  TRISCbits.TRISC7 = 0;       // define SDO pin as output

  SSPCON1 |= SSPENB;              // enable synchronous serial port
}

void SPI_R_putsSPI( unsigned char *wrptr ) {
  while( *wrptr ) {
     SSPBUF = *wrptr++;           // initiate SPI bus cycle
     while( !SSPSTATbits.BF );    // wait until 'BF' bit is set
  }
}

int SPI_R_DataRdySPI() {
    if ( SSPSTATbits.BF )
        return ( +1 );                // data in SSP1BUF register
    else
        return ( 0 );                 // no data in SSP1BUF register
}

unsigned char SPI_R_getcSPI() {
    unsigned char TempVar;
    TempVar = SSPBUF;        // Clear BF
    PIR1bits.SSPIF = 0;      // Clear interrupt flag
    //SSPBUF = 0x00;           // initiate bus cycle
    //while ( !SSPSTATbits.BF );                  // wait until cycle complete
    //while(!PIR1bits.SSPIF);  // wait until cycle complete
    return ( TempVar );       // return with byte read
}

void SPI_R_getsSPI( unsigned char *rdptr, unsigned char length ) {
  while( length ) {
    *rdptr++ = SPI_R_getcSPI();         // read a single byte
    length--;                     // reduce string length count by 1
  }
}