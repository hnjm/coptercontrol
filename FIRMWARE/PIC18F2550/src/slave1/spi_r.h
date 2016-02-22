#ifndef SPI_R_H
#define	SPI_R_H

void SPI_R_OpenSPI( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase);
void SPI_R_putsSPI( unsigned char *wrptr );
int SPI_R_DataRdySPI();
void SPI_R_getsSPI( unsigned char *rdptr, unsigned char length );


#endif	/* SPI_R_H */

