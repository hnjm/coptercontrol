opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	18F2550
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRM equ 0F66h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRML equ 0F66h ;# 
# 132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UFRMH equ 0F67h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIR equ 0F68h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UIE equ 0F69h ;# 
# 281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 381 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCON equ 0F6Dh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 553 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP0 equ 0F70h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP1 equ 0F71h ;# 
# 896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP2 equ 0F72h ;# 
# 1027 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 2204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2291 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTA equ 0F80h ;# 
# 2534 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTB equ 0F81h ;# 
# 2643 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTC equ 0F82h ;# 
# 2796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PORTE equ 0F84h ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATA equ 0F89h ;# 
# 3164 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATB equ 0F8Ah ;# 
# 3296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LATC equ 0F8Bh ;# 
# 3411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISA equ 0F92h ;# 
# 3416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRA equ 0F92h ;# 
# 3608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISB equ 0F93h ;# 
# 3613 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRB equ 0F93h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TRISC equ 0F94h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
DDRC equ 0F94h ;# 
# 4000 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 4058 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 4277 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 4347 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 4417 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 4487 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 4552 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 4558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
EEADR equ 0FA9h ;# 
# 4570 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA equ 0FABh ;# 
# 4575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 5076 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG equ 0FADh ;# 
# 5081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG equ 0FAEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 5103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 5109 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 5115 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T3CON equ 0FB1h ;# 
# 5237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 5249 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CMCON equ 0FB4h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 5434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 5439 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 5568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 5607 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5781 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 6013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 6103 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 6225 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRES equ 0FC3h ;# 
# 6231 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 6237 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 6243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 6373 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6639 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6651 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6753 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6857 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6863 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
RCON equ 0FD0h ;# 
# 7133 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 7160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 7165 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 7511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
T0CON equ 0FD5h ;# 
# 7580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 7586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 7592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 7598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7694 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7706 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7718 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
BSR equ 0FE0h ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7748 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7754 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7760 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7766 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7772 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7778 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
WREG equ 0FE8h ;# 
# 7784 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7790 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7796 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7802 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
INTCON equ 0FF2h ;# 
# 8135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PROD equ 0FF3h ;# 
# 8141 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODL equ 0FF3h ;# 
# 8147 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PRODH equ 0FF4h ;# 
# 8153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 8161 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 8167 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 8173 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 8179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 8187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 8194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PC equ 0FF9h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCL equ 0FF9h ;# 
# 8206 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 8212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 8218 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 8293 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOS equ 0FFDh ;# 
# 8299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSL equ 0FFDh ;# 
# 8305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSH equ 0FFEh ;# 
# 8311 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f2550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_APP_CustomHIDTasks
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_USBDeviceAttach
	FNCALL	_main,_USBDeviceInit
	FNCALL	_USBDeviceInit,_memset
	FNCALL	_SYSTEM_Initialize,_initADC
	FNCALL	_initADC,_OpenADC
	FNCALL	_APP_CustomHIDTasks,_BusyADC
	FNCALL	_APP_CustomHIDTasks,_ConvertADC
	FNCALL	_APP_CustomHIDTasks,_USBTransferOnePacket
	FNCALL	_APP_CustomHIDTasks,_memset
	FNROOT	_main
	FNCALL	_SYS_InterruptHigh,_USBDeviceTasks
	FNCALL	_USBDeviceTasks,_USBCtrlEPAllowStatusStage
	FNCALL	_USBDeviceTasks,_USBCtrlEPService
	FNCALL	_USBDeviceTasks,_USBStallHandler
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBDeviceTasks,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBDeviceTasks,i2_USBDeviceInit
	FNCALL	i2_USBDeviceInit,i2_memset
	FNCALL	_USBWakeFromSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPService,_USBCtrlTrfInHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfOutHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfSetupHandler
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlTrfSetupHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowDataStage
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlEPAllowDataStage,_USBCtrlTrfTxService
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBCheckStdRequest,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,i2_memset
	FNCALL	_USBStdFeatureReqHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_CustomHIDInitialize
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_USBCBErrorHandler
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_USBCBSuspend
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_USBCBWakeFromSuspend
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_USBCB_SOF_Handler
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCheckHIDRequest
	FNCALL	_APP_CustomHIDInitialize,_USBEnableEndpoint
	FNCALL	_APP_CustomHIDInitialize,i2_USBTransferOnePacket
	FNCALL	_USBEnableEndpoint,_USBConfigureEndpoint
	FNCALL	_USBCtrlTrfOutHandler,_USBCtrlTrfRxService
	FNCALL	_USBCtrlTrfRxService,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNCALL	intlevel2,_SYS_InterruptHigh
	global	intlevel2
	FNROOT	intlevel2
	FNCALL	intlevel1,_SYS_InterruptLow
	global	intlevel1
	FNROOT	intlevel1
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"../src/usb_descriptors.c"
	line	287
_USB_SD_Ptr:
	dw	((_sd000))&0ffffh
	dw	((_sd001))&0ffffh
	dw	((_sd002))&0ffffh
	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_USB_CD_Ptr
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	281
_USB_CD_Ptr:
	dw	((_configDescriptor1))&0ffffh
	global __end_of_USB_CD_Ptr
__end_of_USB_CD_Ptr:
	global	_sd002
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	243
_sd002:
	db	low(048h)
	db	low(03h)
	dw	(053h)&0ffffh
	dw	(069h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(070h)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(065h)&0ffffh
	dw	(020h)&0ffffh
	dw	(048h)&0ffffh
	dw	(049h)&0ffffh
	dw	(044h)&0ffffh
	dw	(020h)&0ffffh
	dw	(044h)&0ffffh
	dw	(065h)&0ffffh
	dw	(076h)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(065h)&0ffffh
	dw	(020h)&0ffffh
	dw	(044h)&0ffffh
	dw	(065h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(020h)&0ffffh
	dw	(028h)&0ffffh
	dw	(02Dh)&0ffffh
	dw	(03Eh)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	global __end_of_sd002
__end_of_sd002:
	global	_sd001
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	236
_sd001:
	db	low(038h)
	db	low(03h)
	dw	(041h)&0ffffh
	dw	(020h)&0ffffh
	dw	(04Dh)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(072h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(069h)&0ffffh
	dw	(070h)&0ffffh
	dw	(020h)&0ffffh
	dw	(054h)&0ffffh
	dw	(065h)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(067h)&0ffffh
	dw	(079h)&0ffffh
	dw	(020h)&0ffffh
	dw	(049h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(063h)&0ffffh
	dw	(02Eh)&0ffffh
	global __end_of_sd001
__end_of_sd001:
	global	_configDescriptor1
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	182
_configDescriptor1:
	db	low(09h)
	db	low(02h)
	db	low(029h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0C0h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(02h)
	db	low(03h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(09h)
	db	low(021h)
	db	low(011h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(022h)
	db	low(01Dh)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(01h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	global __end_of_configDescriptor1
__end_of_configDescriptor1:
	global	_hid_rpt01
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	260
_hid_rpt01:
	db	low(06h)
	db	low(0)
	db	low(0FFh)
	db	low(09h)
	db	low(01h)
	db	low(0A1h)
	db	low(01h)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(015h)
	db	low(01h)
	db	low(026h)
	db	low(0FFh)
	db	low(0)
	db	low(075h)
	db	low(08h)
	db	low(095h)
	db	low(040h)
	db	low(081h)
	db	low(0)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(091h)
	db	low(0)
	db	low(0C0h)
	global __end_of_hid_rpt01
__end_of_hid_rpt01:
	global	_device_dsc
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	163
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(04D8h)&0ffffh
	dw	(03Fh)&0ffffh
	dw	(02h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd000
psect	smallconst
	file	"../src/usb_descriptors.c"
	line	231
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_USB_SD_Ptr
	global	_USB_CD_Ptr
	global	_sd002
	global	_sd001
	global	_configDescriptor1
	global	_hid_rpt01
	global	_device_dsc
	global	_sd000
	global	APP_LEDUpdateUSBStatus@ledCount
	global	USBCBSendResume@delay_count
	global	_pBDTEntryEP0OutCurrent
	global	_pBDTEntryEP0OutNext
	global	_pDst
	global	_BothEP0OutUOWNsSet
	global	_RemoteWakeup
	global	_USBBusIsSuspended
	global	_USBDeferINDataStagePackets
	global	_USBDeferOUTDataStagePackets
	global	_USBDeferStatusStagePacket
	global	_USBStatusStageEnabledFlag1
	global	_USBStatusStageEnabledFlag2
	global	_USBStatusStageTimeoutCounter
	global	_controlTransferState
	global	_endpoint_number
	global	_shortPacketStatus
	global	_USBActiveConfiguration
	global	_USBAlternateInterface
	global	_USTATcopy
	global	_active_protocol
	global	_idle_rate
	global	_outPipes
	global	_pBDTEntryIn
	global	_pBDTEntryOut
	global	_USBInHandle
	global	_USBOutHandle
	global	_ep_data_in
	global	_ep_data_out
	global	_USBDeviceState
	global	__doTransmit
	global	_inPipes
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR2bits
_IPR2bits	set	0xFA2
	global	_LATB
_LATB	set	0xF8A
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_UADDR
_UADDR	set	0xF6E
	global	_UCFG
_UCFG	set	0xF6F
	global	_UCON
_UCON	set	0xF6D
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_UEIE
_UEIE	set	0xF6B
	global	_UEIR
_UEIR	set	0xF6A
	global	_UEP0bits
_UEP0bits	set	0xF70
	global	_UIE
_UIE	set	0xF69
	global	_UIEbits
_UIEbits	set	0xF69
	global	_UIR
_UIR	set	0xF68
	global	_UIRbits
_UIRbits	set	0xF68
	global	_USTAT
_USTAT	set	0xF6C
	global	_UEP0
_UEP0	set	0xF70
	global	_UEP1
_UEP1	set	0xF71
	global	_ReceivedDataBuffer

	DABS	1,1280,64,_ReceivedDataBuffer
	global	_BDT

	DABS	1,1024,32,_BDT
	global	_ToSendDataBuffer

	DABS	1,1344,64,_ToSendDataBuffer
	global	_CtrlTrfData

	DABS	1,1064,8,_CtrlTrfData
	global	_SetupPkt

	DABS	1,1056,8,_SetupPkt
; #config settings
global __CFG_CPUDIV$OSC1_PLL2
__CFG_CPUDIV$OSC1_PLL2 equ 0x0
global __CFG_PLLDIV$1
__CFG_PLLDIV$1 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$XTPLL_XT
__CFG_FOSC$XTPLL_XT equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_VREGEN$ON
__CFG_VREGEN$ON equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"Debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
APP_LEDUpdateUSBStatus@ledCount:
       ds      2
USBCBSendResume@delay_count:
       ds      2
	global	_pBDTEntryEP0OutCurrent
_pBDTEntryEP0OutCurrent:
       ds      2
	global	_pBDTEntryEP0OutNext
_pBDTEntryEP0OutNext:
       ds      2
	global	_pDst
_pDst:
       ds      2
	global	_BothEP0OutUOWNsSet
_BothEP0OutUOWNsSet:
       ds      1
	global	_RemoteWakeup
_RemoteWakeup:
       ds      1
	global	_USBBusIsSuspended
_USBBusIsSuspended:
       ds      1
	global	_USBDeferINDataStagePackets
_USBDeferINDataStagePackets:
       ds      1
	global	_USBDeferOUTDataStagePackets
_USBDeferOUTDataStagePackets:
       ds      1
	global	_USBDeferStatusStagePacket
_USBDeferStatusStagePacket:
       ds      1
	global	_USBStatusStageEnabledFlag1
_USBStatusStageEnabledFlag1:
       ds      1
	global	_USBStatusStageEnabledFlag2
_USBStatusStageEnabledFlag2:
       ds      1
	global	_USBStatusStageTimeoutCounter
_USBStatusStageTimeoutCounter:
       ds      1
	global	_controlTransferState
_controlTransferState:
       ds      1
	global	_endpoint_number
_endpoint_number:
       ds      1
	global	_shortPacketStatus
_shortPacketStatus:
       ds      1
	global	_USBActiveConfiguration
_USBActiveConfiguration:
       ds      1
	global	_USBAlternateInterface
_USBAlternateInterface:
       ds      1
	global	_USTATcopy
_USTATcopy:
       ds      1
_active_protocol:
       ds      1
_idle_rate:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_outPipes
_outPipes:
       ds      8
	global	_pBDTEntryIn
_pBDTEntryIn:
       ds      4
	global	_pBDTEntryOut
_pBDTEntryOut:
       ds      4
	global	_USBInHandle
_USBInHandle:
       ds      2
	global	_USBOutHandle
_USBOutHandle:
       ds      2
	global	_ep_data_in
_ep_data_in:
       ds      2
	global	_ep_data_out
_ep_data_out:
       ds      2
	global	_USBDeviceState
_USBDeviceState:
       ds      1
	global	__doTransmit
__doTransmit:
       ds      1
	global	_inPipes
_inPipes:
       ds      6
	line	#
psect	cinit
; Clear objects allocated to BANK0 (32 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	32
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (27 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	27
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	USBCtrlEPService@setup_cnt
USBCtrlEPService@setup_cnt:	; 1 bytes @ 0x0
	ds   1
	global	USBDeviceTasks@i
USBDeviceTasks@i:	; 1 bytes @ 0x1
	ds   1
??_SYS_InterruptHigh:	; 0 bytes @ 0x2
	ds   14
??_ConvertADC:	; 0 bytes @ 0x10
??_BusyADC:	; 0 bytes @ 0x10
??_USBDeviceAttach:	; 0 bytes @ 0x10
?_OpenADC:	; 0 bytes @ 0x10
	global	?_USBTransferOnePacket
?_USBTransferOnePacket:	; 2 bytes @ 0x10
?_memset:	; 2 bytes @ 0x10
	global	USBTransferOnePacket@dir
USBTransferOnePacket@dir:	; 1 bytes @ 0x10
	global	OpenADC@config2
OpenADC@config2:	; 1 bytes @ 0x10
	global	memset@p1
memset@p1:	; 2 bytes @ 0x10
	ds   1
	global	OpenADC@portconfig
OpenADC@portconfig:	; 1 bytes @ 0x11
	global	USBTransferOnePacket@data
USBTransferOnePacket@data:	; 2 bytes @ 0x11
	ds   1
??_OpenADC:	; 0 bytes @ 0x12
	global	memset@c
memset@c:	; 2 bytes @ 0x12
	ds   1
	global	USBTransferOnePacket@len
USBTransferOnePacket@len:	; 1 bytes @ 0x13
	ds   1
??_USBTransferOnePacket:	; 0 bytes @ 0x14
	global	USBTransferOnePacket@ep
USBTransferOnePacket@ep:	; 1 bytes @ 0x14
	global	OpenADC@config
OpenADC@config:	; 1 bytes @ 0x14
	global	memset@n
memset@n:	; 2 bytes @ 0x14
	ds   1
??_SYSTEM_Initialize:	; 0 bytes @ 0x15
??_initADC:	; 0 bytes @ 0x15
	global	SYSTEM_Initialize@state
SYSTEM_Initialize@state:	; 1 bytes @ 0x15
	global	USBTransferOnePacket@handle
USBTransferOnePacket@handle:	; 2 bytes @ 0x15
	ds   1
??_memset:	; 0 bytes @ 0x16
	global	memset@p
memset@p:	; 2 bytes @ 0x16
	ds   2
??_USBDeviceInit:	; 0 bytes @ 0x18
??_APP_CustomHIDTasks:	; 0 bytes @ 0x18
	global	USBDeviceInit@i
USBDeviceInit@i:	; 1 bytes @ 0x18
	ds   1
	global	_APP_CustomHIDTasks$318
_APP_CustomHIDTasks$318:	; 2 bytes @ 0x19
	ds   2
	global	_APP_CustomHIDTasks$368
_APP_CustomHIDTasks$368:	; 2 bytes @ 0x1B
	ds   2
??_main:	; 0 bytes @ 0x1D
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ConvertADC:	; 0 bytes @ 0x0
?_USBCheckHIDRequest:	; 0 bytes @ 0x0
?_SYSTEM_Initialize:	; 0 bytes @ 0x0
?_USBDeviceInit:	; 0 bytes @ 0x0
?_USBDeviceAttach:	; 0 bytes @ 0x0
?_USBDeviceTasks:	; 0 bytes @ 0x0
?_initADC:	; 0 bytes @ 0x0
?_USBWakeFromSuspend:	; 0 bytes @ 0x0
?_USBSuspend:	; 0 bytes @ 0x0
?_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x0
?_USBStallHandler:	; 0 bytes @ 0x0
?_USBCtrlEPService:	; 0 bytes @ 0x0
?_USBCtrlTrfTxService:	; 0 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfOutHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 0 bytes @ 0x0
?_USBCheckStdRequest:	; 0 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 0 bytes @ 0x0
?_APP_CustomHIDInitialize:	; 0 bytes @ 0x0
?_APP_CustomHIDTasks:	; 0 bytes @ 0x0
?_APP_USBCBSuspend:	; 0 bytes @ 0x0
?_APP_USBCBWakeFromSuspend:	; 0 bytes @ 0x0
?_APP_USBCB_SOF_Handler:	; 0 bytes @ 0x0
?_APP_USBCBErrorHandler:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_SYS_InterruptHigh:	; 0 bytes @ 0x0
?_SYS_InterruptLow:	; 0 bytes @ 0x0
??_SYS_InterruptLow:	; 0 bytes @ 0x0
?_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 0 bytes @ 0x0
?_USBCtrlTrfRxService:	; 0 bytes @ 0x0
?_USBStdSetCfgHandler:	; 0 bytes @ 0x0
?_USBStdGetDscHandler:	; 0 bytes @ 0x0
?_USBStdGetStatusHandler:	; 0 bytes @ 0x0
?i2_USBDeviceInit:	; 0 bytes @ 0x0
?_BusyADC:	; 1 bytes @ 0x0
	ds   17
??_USBCheckHIDRequest:	; 0 bytes @ 0x11
??_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x11
??_USBStallHandler:	; 0 bytes @ 0x11
?_USBConfigureEndpoint:	; 0 bytes @ 0x11
??_USBCtrlTrfTxService:	; 0 bytes @ 0x11
??_APP_USBCBSuspend:	; 0 bytes @ 0x11
??_APP_USBCBWakeFromSuspend:	; 0 bytes @ 0x11
??_APP_USBCB_SOF_Handler:	; 0 bytes @ 0x11
??_APP_USBCBErrorHandler:	; 0 bytes @ 0x11
??_USBCtrlTrfRxService:	; 0 bytes @ 0x11
??_USBStdGetDscHandler:	; 0 bytes @ 0x11
??_USBStdGetStatusHandler:	; 0 bytes @ 0x11
	global	?i2_USBTransferOnePacket
?i2_USBTransferOnePacket:	; 2 bytes @ 0x11
?i2_memset:	; 2 bytes @ 0x11
	global	USBConfigureEndpoint@direction
USBConfigureEndpoint@direction:	; 1 bytes @ 0x11
	global	USBCtrlTrfTxService@byteToSend
USBCtrlTrfTxService@byteToSend:	; 1 bytes @ 0x11
	global	USBCtrlTrfRxService@i
USBCtrlTrfRxService@i:	; 1 bytes @ 0x11
	global	i2USBTransferOnePacket@dir
i2USBTransferOnePacket@dir:	; 1 bytes @ 0x11
	global	i2memset@p1
i2memset@p1:	; 2 bytes @ 0x11
	ds   1
??_USBConfigureEndpoint:	; 0 bytes @ 0x12
??_USBCtrlTrfInHandler:	; 0 bytes @ 0x12
??_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x12
??_USBCtrlEPServiceComplete:	; 0 bytes @ 0x12
	global	USBCtrlTrfRxService@byteToRead
USBCtrlTrfRxService@byteToRead:	; 1 bytes @ 0x12
	global	USBCtrlTrfInHandler@lastDTS
USBCtrlTrfInHandler@lastDTS:	; 1 bytes @ 0x12
	global	USBStdGetStatusHandler@p
USBStdGetStatusHandler@p:	; 2 bytes @ 0x12
	global	i2USBTransferOnePacket@data
i2USBTransferOnePacket@data:	; 2 bytes @ 0x12
	ds   1
??_USBCtrlTrfOutHandler:	; 0 bytes @ 0x13
	global	i2memset@c
i2memset@c:	; 2 bytes @ 0x13
	ds   1
	global	i2USBTransferOnePacket@len
i2USBTransferOnePacket@len:	; 1 bytes @ 0x14
	ds   1
??i2_USBTransferOnePacket:	; 0 bytes @ 0x15
	global	i2USBTransferOnePacket@ep
i2USBTransferOnePacket@ep:	; 1 bytes @ 0x15
	global	i2memset@n
i2memset@n:	; 2 bytes @ 0x15
	ds   1
	global	USBConfigureEndpoint@EPNum
USBConfigureEndpoint@EPNum:	; 1 bytes @ 0x16
	global	i2USBTransferOnePacket@handle
i2USBTransferOnePacket@handle:	; 2 bytes @ 0x16
	ds   1
??i2_memset:	; 0 bytes @ 0x17
	global	USBConfigureEndpoint@handle
USBConfigureEndpoint@handle:	; 2 bytes @ 0x17
	global	i2memset@p
i2memset@p:	; 2 bytes @ 0x17
	ds   2
?_USBEnableEndpoint:	; 0 bytes @ 0x19
??i2_USBDeviceInit:	; 0 bytes @ 0x19
	global	USBEnableEndpoint@options
USBEnableEndpoint@options:	; 1 bytes @ 0x19
	global	i2USBDeviceInit@i
i2USBDeviceInit@i:	; 1 bytes @ 0x19
	ds   1
??_USBEnableEndpoint:	; 0 bytes @ 0x1A
	ds   2
	global	USBEnableEndpoint@p
USBEnableEndpoint@p:	; 2 bytes @ 0x1C
	ds   2
	global	USBEnableEndpoint@ep
USBEnableEndpoint@ep:	; 1 bytes @ 0x1E
	ds   1
??_APP_CustomHIDInitialize:	; 0 bytes @ 0x1F
?_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0x1F
	global	USER_USB_CALLBACK_EVENT_HANDLER@event
USER_USB_CALLBACK_EVENT_HANDLER@event:	; 2 bytes @ 0x1F
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@pdata
USER_USB_CALLBACK_EVENT_HANDLER@pdata:	; 2 bytes @ 0x21
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@size
USER_USB_CALLBACK_EVENT_HANDLER@size:	; 2 bytes @ 0x23
	ds   2
??_USER_USB_CALLBACK_EVENT_HANDLER:	; 0 bytes @ 0x25
	ds   2
??_USBWakeFromSuspend:	; 0 bytes @ 0x27
??_USBSuspend:	; 0 bytes @ 0x27
??_USBStdFeatureReqHandler:	; 0 bytes @ 0x27
??_USBStdSetCfgHandler:	; 0 bytes @ 0x27
	global	USBStdSetCfgHandler@i
USBStdSetCfgHandler@i:	; 1 bytes @ 0x27
	ds   3
	global	USBStdFeatureReqHandler@pUEP
USBStdFeatureReqHandler@pUEP:	; 2 bytes @ 0x2A
	ds   2
	global	USBStdFeatureReqHandler@current_ep_data
USBStdFeatureReqHandler@current_ep_data:	; 1 bytes @ 0x2C
	ds   1
	global	USBStdFeatureReqHandler@p
USBStdFeatureReqHandler@p:	; 2 bytes @ 0x2D
	ds   2
??_USBCheckStdRequest:	; 0 bytes @ 0x2F
	ds   2
??_USBCtrlEPService:	; 0 bytes @ 0x31
??_USBCtrlTrfSetupHandler:	; 0 bytes @ 0x31
	ds   2
??_USBDeviceTasks:	; 0 bytes @ 0x33
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    228
;!    Data        0
;!    BSS         59
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     51      78
;!    BANK0           160     29      61
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           208      0       0
;!    BANK5           128      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    USER_USB_CALLBACK_EVENT_HANDLER@pdata	PTR void  size(2) Largest target is 32
;!		 -> USTATcopy(COMRAM[1]), USBActiveConfiguration(COMRAM[1]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 64
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), ToSendDataBuffer(BIGRAMh[64]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 64
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), ToSendDataBuffer(BIGRAMh[64]), 
;!
;!    USBStdFeatureReqHandler@pUEP	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(ABS[1]), 
;!
;!    USBStdFeatureReqHandler@p	PTR struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBStdGetStatusHandler@p	PTR struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pDst	PTR volatile unsigned char  size(2) Largest target is 8
;!		 -> CtrlTrfData(BIGRAMlh[8]), NULL(NULL[0]), 
;!
;!    USBConfigureEndpoint@handle	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), 
;!
;!    pBDTEntryEP0OutCurrent	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pBDTEntryEP0OutNext	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBTransferOnePacket@data	PTR unsigned char  size(2) Largest target is 64
;!		 -> ToSendDataBuffer(BIGRAMh[64]), ReceivedDataBuffer(BIGRAMll[64]), 
;!
;!    USBTransferOnePacket@handle	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBEnableEndpoint@p	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(ABS[1]), 
;!
;!    pBDTEntryOut	PTR volatile struct __BDT[2] size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pBDTEntryIn	PTR volatile struct __BDT[2] size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    S750$pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    outPipes.pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    S740$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    outPipes.pDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S740$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    outPipes.pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S716$wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    S716$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S716$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S716$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    USB_SD_Ptr	const PTR const unsigned char [3] size(2) Largest target is 72
;!		 -> sd002(CODE[72]), sd001(CODE[56]), sd000(CODE[4]), 
;!
;!    USB_CD_Ptr	const PTR const unsigned char [1] size(2) Largest target is 41
;!		 -> configDescriptor1(CODE[41]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 64
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), ToSendDataBuffer(BIGRAMh[64]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBOutHandle	PTR volatile void  size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBInHandle	PTR volatile void  size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in COMRAM
;!
;!    _USBDeviceTasks->_USBCtrlEPService
;!    i2_USBDeviceInit->i2_memset
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCtrlTrfSetupHandler->_USBCheckStdRequest
;!    _USBCtrlEPAllowDataStage->_USBCtrlTrfTxService
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _APP_CustomHIDInitialize->_USBEnableEndpoint
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!    _USBCtrlTrfOutHandler->_USBCtrlTrfRxService
;!    _USBCtrlTrfInHandler->_USBCtrlTrfTxService
;!
;!Critical Paths under _SYS_InterruptLow in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_APP_CustomHIDTasks
;!    _USBDeviceInit->_memset
;!    _initADC->_OpenADC
;!    _APP_CustomHIDTasks->_memset
;!
;!Critical Paths under _SYS_InterruptHigh in BANK0
;!
;!    _SYS_InterruptHigh->_USBDeviceTasks
;!    _USBDeviceTasks->_USBCtrlEPService
;!
;!Critical Paths under _SYS_InterruptLow in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK1
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK2
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK3
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK4
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK5
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK6
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK7
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptLow in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    4053
;!                 _APP_CustomHIDTasks
;!                  _SYSTEM_Initialize
;!                    _USBDeviceAttach
;!                      _USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceInit                                        1     1      0    1399
;!                                             24 BANK0      1     1      0
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceAttach                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    1     1      0     354
;!                                             21 BANK0      1     1      0
;!                            _initADC
;! ---------------------------------------------------------------------------------
;! (2) _initADC                                              0     0      0     332
;!                            _OpenADC
;! ---------------------------------------------------------------------------------
;! (3) _OpenADC                                              5     3      2     332
;!                                             16 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _APP_CustomHIDTasks                                   5     5      0    2300
;!                                             24 BANK0      5     5      0
;!                            _BusyADC
;!                         _ConvertADC
;!               _USBTransferOnePacket
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (2) _memset                                               8     2      6    1197
;!                                             16 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (2) _USBTransferOnePacket                                 7     3      4    1055
;!                                             16 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _ConvertADC                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _BusyADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _SYS_InterruptLow                                    17    17      0       0
;!                                              0 COMRAM    17    17      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _SYS_InterruptHigh                                   14    14      0   34822
;!                                              2 BANK0     14    14      0
;!                     _USBDeviceTasks
;! ---------------------------------------------------------------------------------
;! (6) _USBDeviceTasks                                       1     1      0   34822
;!                                              1 BANK0      1     1      0
;!          _USBCtrlEPAllowStatusStage
;!                   _USBCtrlEPService
;!                    _USBStallHandler
;!                         _USBSuspend
;!                 _USBWakeFromSuspend
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                    i2_USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (7) i2_USBDeviceInit                                      1     1      0     848
;!                                             25 COMRAM     1     1      0
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (7) _USBWakeFromSuspend                                   0     0      0    4575
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (7) _USBSuspend                                           0     0      0    4575
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (7) _USBStallHandler                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlEPService                                     3     3      0   20181
;!                                             49 COMRAM     2     2      0
;!                                              0 BANK0      1     1      0
;!                _USBCtrlTrfInHandler
;!               _USBCtrlTrfOutHandler
;!             _USBCtrlTrfSetupHandler
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfSetupHandler                               0     0      0   19745
;!                 _USBCheckStdRequest
;!           _USBCtrlEPServiceComplete
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPServiceComplete                             0     0      0     136
;!            _USBCtrlEPAllowDataStage
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlEPAllowDataStage                             0     0      0     136
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (9) _USBCheckStdRequest                                   2     2      0   15034
;!                                             47 COMRAM     2     2      0
;!            _USBStdFeatureReqHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!                _USBStdSetCfgHandler
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (10) _USBStdSetCfgHandler                                 1     1      0    5262
;!                                             39 COMRAM     1     1      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (8) i2_memset                                             8     2      6     557
;!                                             17 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! (10) _USBStdGetStatusHandler                              3     3      0      68
;!                                             17 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (10) _USBStdGetDscHandler                                 2     2      0       0
;!                                             17 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (10) _USBStdFeatureReqHandler                             8     8      0    5129
;!                                             39 COMRAM     8     8      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (7) _USER_USB_CALLBACK_EVENT_HANDLER                      8     2      6    4575
;!                                             31 COMRAM     8     2      6
;!            _APP_CustomHIDInitialize
;!              _APP_USBCBErrorHandler
;!                   _APP_USBCBSuspend
;!           _APP_USBCBWakeFromSuspend
;!              _APP_USBCB_SOF_Handler
;!                 _USBCheckHIDRequest
;! ---------------------------------------------------------------------------------
;! (8) _USBCheckHIDRequest                                   1     1      0       0
;!                                             17 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) _APP_USBCB_SOF_Handler                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _APP_USBCBWakeFromSuspend                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _APP_USBCBSuspend                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _APP_USBCBErrorHandler                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _APP_CustomHIDInitialize                              0     0      0    1424
;!                  _USBEnableEndpoint
;!             i2_USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (9) i2_USBTransferOnePacket                               7     3      4     576
;!                                             17 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (9) _USBEnableEndpoint                                    6     5      1     848
;!                                             25 COMRAM     6     5      1
;!               _USBConfigureEndpoint
;! ---------------------------------------------------------------------------------
;! (10) _USBConfigureEndpoint                                8     7      1     524
;!                                             17 COMRAM     8     7      1
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfOutHandler                                 0     0      0     167
;!                _USBCtrlTrfRxService
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlTrfRxService                                  2     2      0     167
;!                                             17 COMRAM     2     2      0
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlEPAllowStatusStage                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfInHandler                                  1     1      0     170
;!                                             18 COMRAM     1     1      0
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (11) _USBCtrlTrfTxService                                 1     1      0     136
;!                                             17 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _APP_CustomHIDTasks
;!     _BusyADC
;!     _ConvertADC
;!     _USBTransferOnePacket
;!     _memset
;!   _SYSTEM_Initialize
;!     _initADC
;!       _OpenADC
;!   _USBDeviceAttach
;!   _USBDeviceInit
;!     _memset
;!
;! _SYS_InterruptLow (ROOT)
;!
;! _SYS_InterruptHigh (ROOT)
;!   _USBDeviceTasks
;!     _USBCtrlEPAllowStatusStage
;!     _USBCtrlEPService
;!       _USBCtrlTrfInHandler
;!         _USBCtrlTrfTxService
;!       _USBCtrlTrfOutHandler
;!         _USBCtrlTrfRxService
;!           _USBCtrlEPAllowStatusStage
;!       _USBCtrlTrfSetupHandler
;!         _USBCheckStdRequest
;!           _USBStdFeatureReqHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _APP_CustomHIDInitialize
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _APP_USBCBErrorHandler
;!               _APP_USBCBSuspend
;!               _APP_USBCBWakeFromSuspend
;!               _APP_USBCB_SOF_Handler
;!               _USBCheckHIDRequest
;!           _USBStdGetDscHandler
;!           _USBStdGetStatusHandler
;!           _USBStdSetCfgHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _APP_CustomHIDInitialize
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _APP_USBCBErrorHandler
;!               _APP_USBCBSuspend
;!               _APP_USBCBWakeFromSuspend
;!               _APP_USBCB_SOF_Handler
;!               _USBCheckHIDRequest
;!             i2_memset
;!           _USER_USB_CALLBACK_EVENT_HANDLER
;!             _APP_CustomHIDInitialize
;!               _USBEnableEndpoint
;!                 _USBConfigureEndpoint
;!               i2_USBTransferOnePacket
;!             _APP_USBCBErrorHandler
;!             _APP_USBCBSuspend
;!             _APP_USBCBWakeFromSuspend
;!             _APP_USBCB_SOF_Handler
;!             _USBCheckHIDRequest
;!         _USBCtrlEPServiceComplete
;!           _USBCtrlEPAllowDataStage
;!             _USBCtrlTrfTxService
;!           _USBCtrlEPAllowStatusStage
;!         _USER_USB_CALLBACK_EVENT_HANDLER
;!           _APP_CustomHIDInitialize
;!             _USBEnableEndpoint
;!               _USBConfigureEndpoint
;!             i2_USBTransferOnePacket
;!           _APP_USBCBErrorHandler
;!           _APP_USBCBSuspend
;!           _APP_USBCBWakeFromSuspend
;!           _APP_USBCB_SOF_Handler
;!           _USBCheckHIDRequest
;!     _USBStallHandler
;!     _USBSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _APP_CustomHIDInitialize
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _APP_USBCBErrorHandler
;!         _APP_USBCBSuspend
;!         _APP_USBCBWakeFromSuspend
;!         _APP_USBCB_SOF_Handler
;!         _USBCheckHIDRequest
;!     _USBWakeFromSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _APP_CustomHIDInitialize
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _APP_USBCBErrorHandler
;!         _APP_USBCBSuspend
;!         _APP_USBCBWakeFromSuspend
;!         _APP_USBCB_SOF_Handler
;!         _USBCheckHIDRequest
;!     _USER_USB_CALLBACK_EVENT_HANDLER
;!       _APP_CustomHIDInitialize
;!         _USBEnableEndpoint
;!           _USBConfigureEndpoint
;!         i2_USBTransferOnePacket
;!       _APP_USBCBErrorHandler
;!       _APP_USBCBSuspend
;!       _APP_USBCBWakeFromSuspend
;!       _APP_USBCB_SOF_Handler
;!       _USBCheckHIDRequest
;!     i2_USBDeviceInit
;!       i2_memset
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMll           3FF      0       0      23        0.0%
;!BIGRAMh            280      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BIGRAMlh            D0      0       0      22        0.0%
;!BITBANK4            D0      0       0      12        0.0%
;!BANK4               D0      0       0      13        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     1D      3D       5       38.1%
;!BITBANK5            80      0       0      14        0.0%
;!BANK5               80      0       0      15        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     33      4E       1       82.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      8B      16        0.0%
;!DATA                 0      0      8B       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "../src/main_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_APP_CustomHIDTasks
;;		_SYSTEM_Initialize
;;		_USBDeviceAttach
;;		_USBDeviceInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"../src/main_hid.c"
	line	50
global __ptext0
__ptext0:
psect	text0
	file	"../src/main_hid.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 17
	line	52
	
l3672:
	movlw	(0)&0ffh
	
	call	_SYSTEM_Initialize
	line	54
	
l3674:
	call	_USBDeviceInit	;wreg free
	line	56
	
l3676:
	call	_USBDeviceAttach	;wreg free
	goto	l3678
	line	59
	
l141:
	line	82
	
l3678:
	movlw	(020h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_USBDeviceState))&0ffh,w	;volatile
	btfsc	status,0
	goto	u3091
	goto	u3090
u3091:
	goto	l142
u3090:
	goto	l3678
	line	84
	
l3680:; BSR set to: 0

	goto	l3678
	line	85
	
l142:; BSR set to: 0

	line	91
	btfss	((c:3949)),c,1	;volatile
	goto	u3101
	goto	u3100
u3101:
	goto	l3684
u3100:
	goto	l3678
	line	93
	
l3682:; BSR set to: 0

	goto	l3678
	line	94
	
l144:; BSR set to: 0

	line	97
	
l3684:; BSR set to: 0

	call	_APP_CustomHIDTasks	;wreg free
	goto	l3678
	line	98
	
l143:
	line	59
	goto	l3678
	
l145:
	line	99
	
l146:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 298 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_memset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device.c"
	line	298
global __ptext1
__ptext1:
psect	text1
	file	"../src/usb/src/usb_device.c"
	line	298
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:
;incstack = 0
	opt	stack 18
	line	302
	
l3428:
	bcf	((c:4000)),c,5	;volatile
	line	305
	
l3430:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	308
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	311
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	313
	
l3432:
		movlw	high((c:3953))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1+1))&0ffh
	movlw	low((c:3953))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1))&0ffh

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@c+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((memset@c))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@n+1))&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((memset@n))&0ffh
	call	_memset	;wreg free
	line	315
	
l3434:
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
l3436:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
l3438:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	324
	
l3440:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l3442:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2671
	goto	u2670
u2671:
	goto	l3446
u2670:
	goto	l337
	
l3444:; BSR set to: 0

	goto	l337
	line	325
	
l336:; BSR set to: 0

	line	326
	
l3446:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	04h
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	4	; () banked
	movlw	high(1024)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	324
	
l3448:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l3450:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2681
	goto	u2680
u2681:
	goto	l3446
u2680:
	
l337:; BSR set to: 0

	line	330
	bsf	((c:3949)),c,6	;volatile
	line	333
	
l3452:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	336
	
l3454:; BSR set to: 0

	bcf	((c:3949)),c,4	;volatile
	line	339
	
l3456:; BSR set to: 0

	bcf	((c:3949)),c,6	;volatile
	line	342
	goto	l3466
	
l339:; BSR set to: 0

	line	344
	
l3458:; BSR set to: 0

	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	346
	
l3460:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	347
	
l3462:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	348
	
l3464:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	goto	l3466
	line	349
	
l338:; BSR set to: 0

	line	342
	
l3466:; BSR set to: 0

	btfsc	((c:3944)),c,3	;volatile
	goto	u2691
	goto	u2690
u2691:
	goto	l3458
u2690:
	goto	l3468
	
l340:; BSR set to: 0

	line	353
	
l3468:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	354
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	356
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	357
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	358
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	362
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l3470:; BSR set to: 0

	movlw	(02h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2701
	goto	u2700
u2701:
	goto	l3474
u2700:
	goto	l3480
	
l3472:; BSR set to: 0

	goto	l3480
	line	363
	
l341:; BSR set to: 0

	line	364
	
l3474:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	365
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	366
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	367
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	362
	
l3476:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l3478:; BSR set to: 0

	movlw	(02h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2711
	goto	u2710
u2711:
	goto	l3474
u2710:
	goto	l3480
	
l342:; BSR set to: 0

	line	371
	
l3480:; BSR set to: 0

	movlb	4	; () banked
		movlw	high(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	4	; () banked
	movlw	low(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	373
	
l3482:; BSR set to: 0

	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	375
	
l3484:; BSR set to: 0

	movlw	high(0420h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	(1+(1024+02h))&0ffh	;volatile
	movlw	low(0420h)
	movlb	4	; () banked
	movwf	(0+(1024+02h))&0ffh	;volatile
	line	376
	
l3486:; BSR set to: 4

	movlw	low(08h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	(0+(1024+01h))&0ffh	;volatile
	line	377
	
l3488:; BSR set to: 4

	movlw	low(04h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	((1024))&0ffh	;volatile
	line	378
	
l3490:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	bsf	(0+(7/8)+(1024))&0ffh,(7)&7	;volatile
	line	381
	
l3492:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	384
	
l3494:; BSR set to: 4

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	385
	
l343:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,88
	global	_USBDeviceAttach

;; *************** function _USBDeviceAttach *****************
;; Defined at:
;;		line 1352 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	1352
global __ptext2
__ptext2:
psect	text2
	file	"../src/usb/src/usb_device.c"
	line	1352
	global	__size_of_USBDeviceAttach
	__size_of_USBDeviceAttach	equ	__end_of_USBDeviceAttach-_USBDeviceAttach
	
_USBDeviceAttach:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	1355
	
l3496:
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeviceState))&0ffh	;volatile
	goto	u2721
	goto	u2720
u2721:
	goto	l401
u2720:
	line	1360
	
l3498:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3949)),c	;volatile
	line	1363
	movlw	low(0)
	movwf	((c:3945)),c	;volatile
	line	1367
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	1369
	
l3500:; BSR set to: 0

	bsf	((c:4048)),c,7	;volatile
	
l3502:; BSR set to: 0

	bsf	((c:4002)),c,5	;volatile
	
l3504:; BSR set to: 0

	bsf	((c:4000)),c,5	;volatile
	
l3506:; BSR set to: 0

	bsf	((c:4082)),c,7	;volatile
	line	1372
	goto	l398
	
l399:
	bsf	((c:3949)),c,3	;volatile
	
l398:
	btfss	((c:3949)),c,3	;volatile
	goto	u2731
	goto	u2730
u2731:
	goto	l399
u2730:
	goto	l3508
	
l400:
	line	1375
	
l3508:
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	l401
	line	1380
	
l397:; BSR set to: 0

	goto	l401
	line	1381
	
l396:; BSR set to: 0

	line	1382
	
l401:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceAttach
	__end_of_USBDeviceAttach:
	signat	_USBDeviceAttach,88
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 75 in file "../src/system.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     enum E4776
;; Auto vars:     Size  Location     Type
;;  state           1   21[BANK0 ] enum E4776
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_initADC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"../src/system.c"
	line	75
global __ptext3
__ptext3:
psect	text3
	file	"../src/system.c"
	line	75
	global	__size_of_SYSTEM_Initialize
	__size_of_SYSTEM_Initialize	equ	__end_of_SYSTEM_Initialize-_SYSTEM_Initialize
	
_SYSTEM_Initialize:; BSR set to: 0

;incstack = 0
	opt	stack 17
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((SYSTEM_Initialize@state))&0ffh
	line	77
	
l3408:; BSR set to: 0

	goto	l3426
	line	79
	
l185:; BSR set to: 0

	line	81
	
l3410:; BSR set to: 0

	movlw	(0Fh)&0ffh
	iorwf	((c:4033)),c	;volatile
	line	82
	
l3412:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3978)),c	;volatile
	
l3414:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	83
	
l3416:; BSR set to: 0

	bsf	((c:3987)),c,4	;volatile
	
l3418:; BSR set to: 0

	bsf	((c:3987)),c,5	;volatile
	line	84
	
l3420:; BSR set to: 0

	bsf	((c:3986)),c,0	;volatile
	line	85
	
l3422:; BSR set to: 0

	call	_initADC	;wreg free
	line	86
	goto	l189
	line	88
	
l187:
	line	89
	goto	l189
	line	91
	
l188:
	line	102
	goto	l189
	line	103
	
l3424:
	goto	l189
	line	77
	
l184:
	
l3426:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((SYSTEM_Initialize@state))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l3410
	xorlw	1^0	; case 1
	skipnz
	goto	l189
	xorlw	2^1	; case 2
	skipnz
	goto	l189
	goto	l189

	line	103
	
l186:; BSR set to: 0

	line	104
	
l189:
	return
	opt stack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,4216
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 47 in file "../config_18F2550.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_OpenADC
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"../config_18F2550.c"
	line	47
global __ptext4
__ptext4:
psect	text4
	file	"../config_18F2550.c"
	line	47
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:
;incstack = 0
	opt	stack 17
	line	50
	
l3222:
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((OpenADC@config2))&0ffh
	movlw	low(0FEh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((OpenADC@portconfig))&0ffh
	movlw	(0E3h)&0ffh
	
	call	_OpenADC
	line	51
	
l628:
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
	global	_OpenADC

;; *************** function _OpenADC *****************
;; Defined at:
;;		line 68 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  config2         1   16[BANK0 ] unsigned char 
;;  portconfig      1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initADC
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
	line	68
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
	line	68
	global	__size_of_OpenADC
	__size_of_OpenADC	equ	__end_of_OpenADC-_OpenADC
	
_OpenADC:
;incstack = 0
	opt	stack 17
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((OpenADC@config))&0ffh
	line	72
	
l3166:; BSR set to: 0

	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	73
	movlw	low(0)
	movwf	((c:4032)),c	;volatile
	line	75
	
l3168:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((OpenADC@config2))&0ffh,w
	andlw	low(03Ch)
	movwf	((c:4034)),c	;volatile
	line	77
	
l3170:; BSR set to: 0

	movff	(OpenADC@config2),??_OpenADC+0+0
	movlb	0	; () banked
	swapf	(??_OpenADC+0+0)&0ffh
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_OpenADC+0+0)&0ffh
	movlw	030h
	movlb	0	; () banked
	andwf	(??_OpenADC+0+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((OpenADC@portconfig))&0ffh,w
	andlw	low(0Fh)
	movlb	0	; () banked
	iorwf	(??_OpenADC+0+0)&0ffh,w
	movwf	((c:4033)),c	;volatile
	line	80
	
l3172:; BSR set to: 0

	movff	(OpenADC@config),??_OpenADC+0+0
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_OpenADC+0+0)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_OpenADC+0+0)&0ffh

	movlw	038h
	movlb	0	; () banked
	andwf	(??_OpenADC+0+0)&0ffh
	movff	(OpenADC@config),??_OpenADC+1+0
	movlb	0	; () banked
	swapf	(??_OpenADC+1+0)&0ffh
	movlw	(0ffh shr 4) & 0ffh
	andwf	(??_OpenADC+1+0)&0ffh
	movlw	07h
	movlb	0	; () banked
	andwf	(??_OpenADC+1+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((OpenADC@config))&0ffh,w
	andlw	low(080h)
	movlb	0	; () banked
	iorwf	(??_OpenADC+1+0)&0ffh,w
	movlb	0	; () banked
	iorwf	(??_OpenADC+0+0)&0ffh,w
	movwf	((c:4032)),c	;volatile
	line	82
	
l3174:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((OpenADC@config2))&0ffh,(7)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l655
u2360:
	line	84
	
l3176:; BSR set to: 0

	bcf	((c:3998)),c,6	;volatile
	line	85
	bsf	((c:3997)),c,6	;volatile
	line	86
	bsf	((c:4082)),c,6	;volatile
	line	87
	
l655:; BSR set to: 0

	line	88
	bsf	((c:4034)),c,0	;volatile
	line	89
	
l656:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_OpenADC
	__end_of_OpenADC:
	signat	_OpenADC,12408
	global	_APP_CustomHIDTasks

;; *************** function _APP_CustomHIDTasks *****************
;; Defined at:
;;		line 57 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_BusyADC
;;		_ConvertADC
;;		_USBTransferOnePacket
;;		_memset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"../src/app_custom_hid.c"
	line	57
global __ptext6
__ptext6:
psect	text6
	file	"../src/app_custom_hid.c"
	line	57
	global	__size_of_APP_CustomHIDTasks
	__size_of_APP_CustomHIDTasks	equ	__end_of_APP_CustomHIDTasks-_APP_CustomHIDTasks
	
_APP_CustomHIDTasks:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	58
	
l3362:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBOutHandle+1))&0ffh,w
	iorwf ((_USBOutHandle))&0ffh,w

	btfsc	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l3366
u2560:
	
l3364:; BSR set to: 0

	movff	(_USBOutHandle),fsr2l
	movff	(_USBOutHandle+1),fsr2h
	btfsc	indf2,7
	goto	u2571
	goto	u2570
u2571:
	movlb	0	; () banked
	clrf	(??_APP_CustomHIDTasks+0+0)&0ffh
	incf	(??_APP_CustomHIDTasks+0+0)&0ffh
	goto	u2578
u2570:
	movlb	0	; () banked
	clrf	(??_APP_CustomHIDTasks+0+0)&0ffh
u2578:
	movlb	0	; () banked
	movf	(??_APP_CustomHIDTasks+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$318))&0ffh
	movlb	0	; () banked
	clrf	((_APP_CustomHIDTasks$318+1))&0ffh
	goto	l3368
	
l48:; BSR set to: 0

	
l3366:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$318+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$318))&0ffh
	goto	l3368
	
l50:; BSR set to: 0

	
l3368:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_APP_CustomHIDTasks$318+1))&0ffh,w
	iorwf ((_APP_CustomHIDTasks$318))&0ffh,w

	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3394
u2580:
	line	60
	
l3370:; BSR set to: 0

	movlb	5	; () banked
		movlw	high(1344)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1+1))&0ffh
	movlb	5	; () banked
	movlw	low(1344)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1))&0ffh

	movlw	high(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@c+1))&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movwf	((memset@c))&0ffh
	movlw	high(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@n+1))&0ffh
	movlw	low(040h)
	movlb	0	; () banked
	movwf	((memset@n))&0ffh
	call	_memset	;wreg free
	line	63
	goto	l3386
	line	64
	
l52:
	line	65
	
l3372:
	btfss	((c:3978)),c,2	;volatile
	goto	u2591
	goto	u2590
u2591:
	movlw	1
	goto	u2596
u2590:
	movlw	0
u2596:
	movlb	0	; () banked
	movwf	(??_APP_CustomHIDTasks+0+0)&0ffh
	movlb	0	; () banked
	rlncf	((??_APP_CustomHIDTasks+0+0))&0ffh
	rlncf	((??_APP_CustomHIDTasks+0+0))&0ffh
	movf	((c:3978)),c,w	;volatile
	movlb	0	; () banked
	xorwf	((??_APP_CustomHIDTasks+0+0))&0ffh,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	((??_APP_CustomHIDTasks+0+0))&0ffh,w
	movwf	((c:3978)),c	;volatile
	line	66
	goto	l53
	line	67
	
l54:; BSR set to: 0

	line	68
	
l3374:
	movlw	low(081h)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	((1344))&0ffh
	line	69
	btfss	((c:3969)),c,4	;volatile
	goto	u2601
	goto	u2600
u2601:
	movlw	1
	goto	u2606
u2600:
	movlw	0
u2606:
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	(0+(1344+01h))&0ffh
	line	70
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((__doTransmit))&0ffh
	line	71
	goto	l53
	line	72
	
l55:; BSR set to: 0

	line	73
	
l3376:
	call	_ConvertADC	;wreg free
	line	74
	
l3378:
	movlw	low(037h)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	((1344))&0ffh
	line	75
	goto	l3380
	
l57:; BSR set to: 5

	goto	l3380
	line	77
	
l56:; BSR set to: 5

	line	75
	
l3380:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l3380
u2610:
	
l58:
	line	78
	movff	(c:4035),0+(1344+01h)	;volatile
	line	79
	movff	(c:4036),0+(1344+02h)	;volatile
	line	80
	
l3382:
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((__doTransmit))&0ffh
	line	81
	goto	l53
	line	82
	
l3384:; BSR set to: 0

	goto	l53
	line	63
	
l51:; BSR set to: 0

	
l3386:
	movlb	5	; () banked
	movlb	5	; () banked
	movf	((1280))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 55 to 129
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	55^0	; case 55
	skipnz
	goto	l3376
	xorlw	128^55	; case 128
	skipnz
	goto	l3372
	xorlw	129^128	; case 129
	skipnz
	goto	l3374
	goto	l53

	line	82
	
l53:
	line	84
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((__doTransmit))&0ffh
	goto	u2621
	goto	u2620
u2621:
	goto	l3392
u2620:
	line	86
	
l3388:; BSR set to: 0

	movff	(1280),(1344)
	line	87
	
l3390:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((__doTransmit))&0ffh
	goto	l3392
	line	88
	
l59:; BSR set to: 0

	line	91
	
l3392:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	5	; () banked
		movlw	high(1280)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	5	; () banked
	movlw	low(1280)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBOutHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBOutHandle+1)
	goto	l3394
	line	92
	
l46:; BSR set to: 0

	line	93
	
l3394:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBInHandle+1))&0ffh,w
	iorwf ((_USBInHandle))&0ffh,w

	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l3398
u2630:
	
l3396:; BSR set to: 0

	movff	(_USBInHandle),fsr2l
	movff	(_USBInHandle+1),fsr2h
	btfsc	indf2,7
	goto	u2641
	goto	u2640
u2641:
	movlb	0	; () banked
	clrf	(??_APP_CustomHIDTasks+0+0)&0ffh
	incf	(??_APP_CustomHIDTasks+0+0)&0ffh
	goto	u2648
u2640:
	movlb	0	; () banked
	clrf	(??_APP_CustomHIDTasks+0+0)&0ffh
u2648:
	movlb	0	; () banked
	movf	(??_APP_CustomHIDTasks+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$368))&0ffh
	movlb	0	; () banked
	clrf	((_APP_CustomHIDTasks$368+1))&0ffh
	goto	l3400
	
l62:; BSR set to: 0

	
l3398:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$368+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_APP_CustomHIDTasks$368))&0ffh
	goto	l3400
	
l64:; BSR set to: 0

	
l3400:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_APP_CustomHIDTasks$368+1))&0ffh,w
	iorwf ((_APP_CustomHIDTasks$368))&0ffh,w

	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l65
u2650:
	
l3402:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((__doTransmit))&0ffh,w
	btfsc	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l65
u2660:
	line	95
	
l3404:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	5	; () banked
		movlw	high(1344)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	5	; () banked
	movlw	low(1344)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBInHandle+1)
	line	96
	
l3406:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((__doTransmit))&0ffh
	goto	l65
	line	97
	
l60:; BSR set to: 0

	line	98
	
l65:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_APP_CustomHIDTasks
	__end_of_APP_CustomHIDTasks:
	signat	_APP_CustomHIDTasks,88
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2   16[BANK0 ] PTR void 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), ToSendDataBuffer(64), 
;;  c               2   18[BANK0 ] int 
;;  n               2   20[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2   22[BANK0 ] PTR unsigned char 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), ToSendDataBuffer(64), 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_CustomHIDTasks
;;		_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	18
	
l3208:
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(memset@p1+1),(memset@p+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(memset@p1),(memset@p)

	line	19
	goto	l3214
	
l1202:; BSR set to: 0

	line	20
	
l3210:; BSR set to: 0

	movff	(memset@p),fsr2l
	movff	(memset@p+1),fsr2h
	movlb	0	; () banked
	movff	(memset@c),indf2

	
l3212:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((memset@p))&0ffh
	incf	((memset@p+1))&0ffh
	goto	l3214
	
l1201:; BSR set to: 0

	line	19
	
l3214:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((memset@n))&0ffh
	btfss	status,0
	decf	((memset@n+1))&0ffh
	movlb	0	; () banked
	incf	((memset@n))&0ffh,w
	btfsc	status,2
	incf ((memset@n+1))&0ffh,w

	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3210
u2400:
	goto	l1204
	
l1203:; BSR set to: 0

	line	22
;	Return value of _memset is never used
	
l1204:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12410
	global	_USBTransferOnePacket

;; *************** function _USBTransferOnePacket *****************
;; Defined at:
;;		line 995 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1   16[BANK0 ] unsigned char 
;;  data            2   17[BANK0 ] PTR unsigned char 
;;		 -> ToSendDataBuffer(64), ReceivedDataBuffer(64), 
;;  len             1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   20[BANK0 ] unsigned char 
;;  handle          2   21[BANK0 ] PTR volatile struct __BD
;;		 -> BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_CustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device.c"
	line	995
global __ptext8
__ptext8:
psect	text8
	file	"../src/usb/src/usb_device.c"
	line	995
	global	__size_of_USBTransferOnePacket
	__size_of_USBTransferOnePacket	equ	__end_of_USBTransferOnePacket-_USBTransferOnePacket
	
_USBTransferOnePacket:; BSR set to: 0

;incstack = 0
	opt	stack 18
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@ep))&0ffh
	line	1000
	
l3178:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l3182
u2370:
	line	1003
	
l3180:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	0	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	line	1004
	goto	l3184
	line	1005
	
l376:; BSR set to: 0

	line	1008
	
l3182:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	0	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	goto	l3184
	line	1009
	
l377:; BSR set to: 0

	line	1013
	
l3184:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	iorwf ((USBTransferOnePacket@handle))&0ffh,w

	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l3190
u2380:
	line	1015
	
l3186:; BSR set to: 0

		movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh

	goto	l379
	
l3188:; BSR set to: 0

	goto	l379
	line	1016
	
l378:; BSR set to: 0

	line	1029
	
l3190:; BSR set to: 0

	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data),postinc2
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data+1),postdec2
	line	1030
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@len),indf2

	line	1031
	
l3192:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1032
	
l3194:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1033
	
l3196:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1036
	
l3198:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l3202
u2390:
	line	1039
	
l3200:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1040
	goto	l3204
	line	1041
	
l380:; BSR set to: 0

	line	1044
	
l3202:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	l3204
	line	1045
	
l381:; BSR set to: 0

	line	1046
	
l3204:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
		movff	(USBTransferOnePacket@handle+1),(?_USBTransferOnePacket+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(USBTransferOnePacket@handle),(?_USBTransferOnePacket)

	goto	l379
	
l3206:; BSR set to: 0

	line	1047
	
l379:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBTransferOnePacket
	__end_of_USBTransferOnePacket:
	signat	_USBTransferOnePacket,16506
	global	_ConvertADC

;; *************** function _ConvertADC *****************
;; Defined at:
;;		line 22 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_CustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
	line	22
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
	line	22
	global	__size_of_ConvertADC
	__size_of_ConvertADC	equ	__end_of_ConvertADC-_ConvertADC
	
_ConvertADC:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	24
	
l3216:
	bsf	((c:4034)),c,1	;volatile
	line	25
	
l638:
	return
	opt stack 0
GLOBAL	__end_of_ConvertADC
	__end_of_ConvertADC:
	signat	_ConvertADC,88
	global	_BusyADC

;; *************** function _BusyADC *****************
;; Defined at:
;;		line 26 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_CustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
	line	26
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
	line	26
	global	__size_of_BusyADC
	__size_of_BusyADC	equ	__end_of_BusyADC-_BusyADC
	
_BusyADC:
;incstack = 0
	opt	stack 18
	line	28
	
l3218:
	btfsc	((c:4034)),c,1	;volatile
	goto	u2411
	goto	u2410
u2411:
	movlw	1
	goto	u2416
u2410:
	movlw	0
u2416:
	goto	l633
	
l3220:
	line	29
	
l633:
	return
	opt stack 0
GLOBAL	__end_of_BusyADC
	__end_of_BusyADC:
	signat	_BusyADC,89
	global	_SYS_InterruptLow

;; *************** function _SYS_InterruptLow *****************
;; Defined at:
;;		line 51 in file "../src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:         17       0       0       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"../src/system.c"
	line	51
	global	__size_of_SYS_InterruptLow
	__size_of_SYS_InterruptLow	equ	__end_of_SYS_InterruptLow-_SYS_InterruptLow
	
_SYS_InterruptLow:
;incstack = 0
	opt	stack 17
	movff	status+0,??_SYS_InterruptLow+0
	movff	wreg+0,??_SYS_InterruptLow+1
	movff	bsr+0,??_SYS_InterruptLow+2
	movff	pclat+0,??_SYS_InterruptLow+3
	movff	pclat+1,??_SYS_InterruptLow+4
	movff	fsr0l+0,??_SYS_InterruptLow+5
	movff	fsr0h+0,??_SYS_InterruptLow+6
	movff	fsr1l+0,??_SYS_InterruptLow+7
	movff	fsr1h+0,??_SYS_InterruptLow+8
	movff	fsr2l+0,??_SYS_InterruptLow+9
	movff	fsr2h+0,??_SYS_InterruptLow+10
	movff	prodl+0,??_SYS_InterruptLow+11
	movff	prodh+0,??_SYS_InterruptLow+12
	movff	tblptrl+0,??_SYS_InterruptLow+13
	movff	tblptrh+0,??_SYS_InterruptLow+14
	movff	tblptru+0,??_SYS_InterruptLow+15
	movff	tablat+0,??_SYS_InterruptLow+16
	line	56
	
i1l181:
	movff	??_SYS_InterruptLow+16,tablat+0
	movff	??_SYS_InterruptLow+15,tblptru+0
	movff	??_SYS_InterruptLow+14,tblptrh+0
	movff	??_SYS_InterruptLow+13,tblptrl+0
	movff	??_SYS_InterruptLow+12,prodh+0
	movff	??_SYS_InterruptLow+11,prodl+0
	movff	??_SYS_InterruptLow+10,fsr2h+0
	movff	??_SYS_InterruptLow+9,fsr2l+0
	movff	??_SYS_InterruptLow+8,fsr1h+0
	movff	??_SYS_InterruptLow+7,fsr1l+0
	movff	??_SYS_InterruptLow+6,fsr0h+0
	movff	??_SYS_InterruptLow+5,fsr0l+0
	movff	??_SYS_InterruptLow+4,pclat+1
	movff	??_SYS_InterruptLow+3,pclat+0
	movff	??_SYS_InterruptLow+2,bsr+0
	movff	??_SYS_InterruptLow+1,wreg+0
	movff	??_SYS_InterruptLow+0,status+0
	retfie
	opt stack 0
GLOBAL	__end_of_SYS_InterruptLow
	__end_of_SYS_InterruptLow:
	signat	_SYS_InterruptLow,1112
	global	_SYS_InterruptHigh

;; *************** function _SYS_InterruptHigh *****************
;; Defined at:
;;		line 42 in file "../src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0      14       0       0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_USBDeviceTasks
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"../src/system.c"
	line	42
	global	__size_of_SYS_InterruptHigh
	__size_of_SYS_InterruptHigh	equ	__end_of_SYS_InterruptHigh-_SYS_InterruptHigh
	
_SYS_InterruptHigh:
;incstack = 0
	opt	stack 17
	movff	pclat+0,??_SYS_InterruptHigh+0
	movff	pclat+1,??_SYS_InterruptHigh+1
	movff	fsr0l+0,??_SYS_InterruptHigh+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_SYS_InterruptHigh+3
	movff	fsr1l+0,??_SYS_InterruptHigh+4
	movff	fsr1h+0,??_SYS_InterruptHigh+5
	movff	fsr2l+0,??_SYS_InterruptHigh+6
	movff	fsr2h+0,??_SYS_InterruptHigh+7
	movff	prodl+0,??_SYS_InterruptHigh+8
	movff	prodh+0,??_SYS_InterruptHigh+9
	movff	tblptrl+0,??_SYS_InterruptHigh+10
	movff	tblptrh+0,??_SYS_InterruptHigh+11
	movff	tblptru+0,??_SYS_InterruptHigh+12
	movff	tablat+0,??_SYS_InterruptHigh+13
	line	48
	
i2l4676:
	call	_USBDeviceTasks	;wreg free
	line	50
	
i2l178:
	movff	??_SYS_InterruptHigh+13,tablat+0
	movff	??_SYS_InterruptHigh+12,tblptru+0
	movff	??_SYS_InterruptHigh+11,tblptrh+0
	movff	??_SYS_InterruptHigh+10,tblptrl+0
	movff	??_SYS_InterruptHigh+9,prodh+0
	movff	??_SYS_InterruptHigh+8,prodl+0
	movff	??_SYS_InterruptHigh+7,fsr2h+0
	movff	??_SYS_InterruptHigh+6,fsr2l+0
	movff	??_SYS_InterruptHigh+5,fsr1h+0
	movff	??_SYS_InterruptHigh+4,fsr1l+0
	movff	??_SYS_InterruptHigh+3,fsr0h+0
	movff	??_SYS_InterruptHigh+2,fsr0l+0
	movff	??_SYS_InterruptHigh+1,pclat+1
	movff	??_SYS_InterruptHigh+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_SYS_InterruptHigh
	__end_of_SYS_InterruptHigh:
	signat	_SYS_InterruptHigh,88
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 489 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;;		_USBCtrlEPService
;;		_USBStallHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_USBDeviceInit
;; This function is called by:
;;		_SYS_InterruptHigh
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device.c"
	line	489
global __ptext13
__ptext13:
psect	text13
	file	"../src/usb/src/usb_device.c"
	line	489
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	opt	stack 17
	line	602
	
i2l4548:
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_USBDeviceState))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u406_41
	goto	i2u406_40
i2u406_41:
	goto	i2l4558
i2u406_40:
	line	613
	
i2l4550:; BSR set to: 0

	btfsc	((c:3949)),c,5	;volatile
	goto	i2u407_41
	goto	i2u407_40
i2u407_41:
	goto	i2l4558
i2u407_40:
	line	615
	
i2l4552:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	619
	
i2l4554:; BSR set to: 0

	bsf	((c:3945)),c,0	;volatile
	line	620
	
i2l4556:; BSR set to: 0

	bsf	((c:3945)),c,4	;volatile
	line	621
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l4558
	line	622
	
i2l347:; BSR set to: 0

	goto	i2l4558
	line	623
	
i2l346:; BSR set to: 0

	line	639
	
i2l4558:; BSR set to: 0

	btfss	((c:3944)),c,2	;volatile
	goto	i2u408_41
	goto	i2u408_40
i2u408_41:
	goto	i2l4566
i2u408_40:
	
i2l4560:; BSR set to: 0

	btfss	((c:3945)),c,2	;volatile
	goto	i2u409_41
	goto	i2u409_40
i2u409_41:
	goto	i2l4566
i2u409_40:
	line	641
	
i2l4562:; BSR set to: 0

	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	line	645
	
i2l4564:; BSR set to: 0

	call	_USBWakeFromSuspend	;wreg free
	goto	i2l4566
	line	647
	
i2l348:
	line	652
	
i2l4566:
	btfss	((c:3949)),c,1	;volatile
	goto	i2u410_41
	goto	i2u410_40
i2u410_41:
	goto	i2l349
i2u410_40:
	line	654
	
i2l4568:
	bcf	((c:4001)),c,5	;volatile
	line	655
	goto	i2l350
	line	656
	
i2l349:
	line	668
	btfss	((c:3944)),c,0	;volatile
	goto	i2u411_41
	goto	i2u411_40
i2u411_41:
	goto	i2l4580
i2u411_40:
	
i2l4570:
	btfss	((c:3945)),c,0	;volatile
	goto	i2u412_41
	goto	i2u412_40
i2u412_41:
	goto	i2l4580
i2u412_40:
	line	670
	
i2l4572:
	call	i2_USBDeviceInit	;wreg free
	line	674
	
i2l4574:
	bsf	((c:4000)),c,5	;volatile
	line	676
	
i2l4576:
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	686
	
i2l4578:; BSR set to: 0

	bcf	(0+(0/8)+(c:3944)),c,(0)&7	;volatile
	goto	i2l4580
	line	687
	
i2l351:; BSR set to: 0

	line	692
	
i2l4580:
	btfss	((c:3944)),c,4	;volatile
	goto	i2u413_41
	goto	i2u413_40
i2u413_41:
	goto	i2l4588
i2u413_40:
	
i2l4582:
	btfss	((c:3945)),c,4	;volatile
	goto	i2u414_41
	goto	i2u414_40
i2u414_41:
	goto	i2l4588
i2u414_40:
	line	698
	
i2l4584:
	call	_USBSuspend	;wreg free
	line	701
	
i2l4586:
	bcf	(0+(4/8)+(c:3944)),c,(4)&7	;volatile
	goto	i2l4588
	line	702
	
i2l352:
	line	704
	
i2l4588:
	btfss	((c:3944)),c,6	;volatile
	goto	i2u415_41
	goto	i2u415_40
i2u415_41:
	goto	i2l4604
i2u415_40:
	line	706
	
i2l4590:
	btfss	((c:3945)),c,6	;volatile
	goto	i2u416_41
	goto	i2u416_40
i2u416_41:
	goto	i2l4594
i2u416_40:
	line	708
	
i2l4592:
	movlw	high(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l4594
	line	709
	
i2l354:
	line	710
	
i2l4594:
	bcf	(0+(6/8)+(c:3944)),c,(6)&7	;volatile
	line	735
	
i2l4596:
	movf	((c:_USBStatusStageTimeoutCounter)),c,w	;volatile
	btfsc	status,2
	goto	i2u417_41
	goto	i2u417_40
i2u417_41:
	goto	i2l4600
i2u417_40:
	line	737
	
i2l4598:
	decf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2l4600
	line	738
	
i2l355:
	line	744
	
i2l4600:
	tstfsz	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2u418_41
	goto	i2u418_40
i2u418_41:
	goto	i2l4604
i2u418_40:
	line	746
	
i2l4602:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l4604
	line	747
	
i2l356:
	goto	i2l4604
	line	749
	
i2l353:
	line	751
	
i2l4604:
	btfss	((c:3944)),c,5	;volatile
	goto	i2u419_41
	goto	i2u419_40
i2u419_41:
	goto	i2l4610
i2u419_40:
	
i2l4606:
	btfss	((c:3945)),c,5	;volatile
	goto	i2u420_41
	goto	i2u420_40
i2u420_41:
	goto	i2l4610
i2u420_40:
	line	753
	
i2l4608:
	call	_USBStallHandler	;wreg free
	goto	i2l4610
	line	754
	
i2l357:
	line	756
	
i2l4610:
	btfss	((c:3944)),c,1	;volatile
	goto	i2u421_41
	goto	i2u421_40
i2u421_41:
	goto	i2l4618
i2u421_40:
	
i2l4612:
	btfss	((c:3945)),c,1	;volatile
	goto	i2u422_41
	goto	i2u422_40
i2u422_41:
	goto	i2l4618
i2u422_40:
	line	758
	
i2l4614:
	movlw	high(07FFFh)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	setf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	759
	
i2l4616:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	goto	i2l4618
	line	767
	
i2l358:
	line	774
	
i2l4618:
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_USBDeviceState))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u423_41
	goto	i2u423_40
i2u423_41:
	goto	i2l359
i2u423_40:
	line	776
	
i2l4620:; BSR set to: 0

	bcf	((c:4001)),c,5	;volatile
	line	777
	goto	i2l350
	line	778
	
i2l359:; BSR set to: 0

	line	783
	btfss	((c:3945)),c,3	;volatile
	goto	i2u424_41
	goto	i2u424_40
i2u424_41:
	goto	i2l360
i2u424_40:
	line	785
	
i2l4622:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceTasks@i))&0ffh
	
i2l4624:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceTasks@i))&0ffh
	goto	i2u425_41
	goto	i2u425_40
i2u425_41:
	goto	i2l361
i2u425_40:
	goto	i2l360
	
i2l4626:; BSR set to: 0

	goto	i2l360
	line	786
	
i2l361:; BSR set to: 0

	line	787
	btfss	((c:3944)),c,3	;volatile
	goto	i2u426_41
	goto	i2u426_40
i2u426_41:
	goto	i2l360
i2u426_40:
	line	790
	
i2l4628:; BSR set to: 0

	movff	(c:3948),(c:_USTATcopy)	;volatile
	line	791
	
i2l4630:; BSR set to: 0

	rrcf	((c:_USTATcopy)),c,w	;volatile
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<4)-1
	movwf	((c:_endpoint_number)),c	;volatile
	line	793
	
i2l4632:; BSR set to: 0

	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	798
	
i2l4634:; BSR set to: 0

	btfsc	((c:_USTATcopy)),c,2	;volatile
	goto	i2u427_41
	goto	i2u427_40
i2u427_41:
	goto	i2l4638
i2u427_40:
	line	800
	
i2l4636:; BSR set to: 0

	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	indf2,0
	line	801
	goto	i2l4640
	line	802
	
i2l364:; BSR set to: 0

	line	804
	
i2l4638:; BSR set to: 0

	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	indf2,0
	goto	i2l4640
	line	805
	
i2l365:; BSR set to: 0

	line	810
	
i2l4640:; BSR set to: 0

	tstfsz	((c:_endpoint_number)),c	;volatile
	goto	i2u428_41
	goto	i2u428_40
i2u428_41:
	goto	i2l4644
i2u428_40:
	line	812
	
i2l4642:; BSR set to: 0

	call	_USBCtrlEPService	;wreg free
	line	813
	goto	i2l4646
	line	814
	
i2l366:
	line	816
	
i2l4644:
	movlw	high(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high((c:_USTATcopy))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low((c:_USTATcopy))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l4646
	line	817
	
i2l367:
	line	818
	goto	i2l4646
	line	819
	
i2l363:
	line	821
	goto	i2l360
	line	822
	
i2l368:
	line	785
	
i2l4646:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceTasks@i))&0ffh
	
i2l4648:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceTasks@i))&0ffh
	goto	i2u429_41
	goto	i2u429_40
i2u429_41:
	goto	i2l361
i2u429_40:
	goto	i2l360
	
i2l362:; BSR set to: 0

	line	824
	
i2l360:
	line	826
	bcf	((c:4001)),c,5	;volatile
	line	827
	
i2l350:
	return
	opt stack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,88
	global	i2_USBDeviceInit

;; *************** function i2_USBDeviceInit *****************
;; Defined at:
;;		line 298 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  USBDeviceIni    1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_memset
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	298
global __ptext14
__ptext14:
psect	text14
	file	"../src/usb/src/usb_device.c"
	line	298
	global	__size_ofi2_USBDeviceInit
	__size_ofi2_USBDeviceInit	equ	__end_ofi2_USBDeviceInit-i2_USBDeviceInit
	
i2_USBDeviceInit:
;incstack = 0
	opt	stack 23
	line	302
	
i2l4480:
	bcf	((c:4000)),c,5	;volatile
	line	305
	
i2l4482:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	308
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	311
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	313
	
i2l4484:
		movlw	high((c:3953))	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlw	low((c:3953))	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	315
	
i2l4486:
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
i2l4488:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
i2l4490:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	324
	
i2l4492:
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l4494:
	movlw	(08h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u401_41
	goto	i2u401_40
i2u401_41:
	goto	i2l4498
i2u401_40:
	goto	i2l337
	
i2l4496:
	goto	i2l337
	line	325
	
i2l336:
	line	326
	
i2l4498:
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	04h
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	4	; () banked
	movlw	high(1024)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	324
	
i2l4500:; BSR set to: 4

	incf	((c:i2USBDeviceInit@i)),c
	
i2l4502:; BSR set to: 4

	movlw	(08h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u402_41
	goto	i2u402_40
i2u402_41:
	goto	i2l4498
i2u402_40:
	
i2l337:
	line	330
	bsf	((c:3949)),c,6	;volatile
	line	333
	
i2l4504:
	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	336
	
i2l4506:
	bcf	((c:3949)),c,4	;volatile
	line	339
	
i2l4508:
	bcf	((c:3949)),c,6	;volatile
	line	342
	goto	i2l4518
	
i2l339:
	line	344
	
i2l4510:
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	346
	
i2l4512:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	347
	
i2l4514:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	348
	
i2l4516:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	goto	i2l4518
	line	349
	
i2l338:; BSR set to: 0

	line	342
	
i2l4518:
	btfsc	((c:3944)),c,3	;volatile
	goto	i2u403_41
	goto	i2u403_40
i2u403_41:
	goto	i2l4510
i2u403_40:
	goto	i2l4520
	
i2l340:
	line	353
	
i2l4520:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	354
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	356
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	357
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	358
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	362
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l4522:
	movlw	(02h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u404_41
	goto	i2u404_40
i2u404_41:
	goto	i2l4526
i2u404_40:
	goto	i2l4532
	
i2l4524:
	goto	i2l4532
	line	363
	
i2l341:
	line	364
	
i2l4526:
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	365
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	366
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	367
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	362
	
i2l4528:; BSR set to: 0

	incf	((c:i2USBDeviceInit@i)),c
	
i2l4530:; BSR set to: 0

	movlw	(02h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u405_41
	goto	i2u405_40
i2u405_41:
	goto	i2l4526
i2u405_40:
	goto	i2l4532
	
i2l342:; BSR set to: 0

	line	371
	
i2l4532:
	movlb	4	; () banked
		movlw	high(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	4	; () banked
	movlw	low(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	373
	
i2l4534:; BSR set to: 0

	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	375
	
i2l4536:; BSR set to: 0

	movlw	high(0420h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	(1+(1024+02h))&0ffh	;volatile
	movlw	low(0420h)
	movlb	4	; () banked
	movwf	(0+(1024+02h))&0ffh	;volatile
	line	376
	
i2l4538:; BSR set to: 4

	movlw	low(08h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	(0+(1024+01h))&0ffh	;volatile
	line	377
	
i2l4540:; BSR set to: 4

	movlw	low(04h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	((1024))&0ffh	;volatile
	line	378
	
i2l4542:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	bsf	(0+(7/8)+(1024))&0ffh,(7)&7	;volatile
	line	381
	
i2l4544:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	384
	
i2l4546:; BSR set to: 4

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	385
	
i2l343:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_ofi2_USBDeviceInit
	__end_ofi2_USBDeviceInit:
	signat	i2_USBDeviceInit,88
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 2302 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	2302
global __ptext15
__ptext15:
psect	text15
	file	"../src/usb/src/usb_device.c"
	line	2302
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:; BSR set to: 0

;incstack = 0
	opt	stack 20
	line	2304
	
i2l4410:
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2310
	
i2l4412:
	movlw	high(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2317
	
i2l4414:
	bcf	((c:3949)),c,1	;volatile
	line	2322
	
i2l4416:
	bcf	((c:3945)),c,2	;volatile
	line	2340
	goto	i2l4420
	
i2l508:
	line	2343
	
i2l4418:
	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	goto	i2l4420
	line	2344
	
i2l507:
	line	2340
	
i2l4420:
	btfsc	((c:3944)),c,2	;volatile
	goto	i2u392_41
	goto	i2u392_40
i2u392_41:
	goto	i2l4418
i2u392_40:
	goto	i2l510
	
i2l509:
	line	2346
	
i2l510:
	return
	opt stack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,88
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 2245 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	2245
global __ptext16
__ptext16:
psect	text16
	file	"../src/usb/src/usb_device.c"
	line	2245
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:
;incstack = 0
	opt	stack 20
	line	2270
	
i2l4422:
	bsf	((c:3945)),c,2	;volatile
	line	2271
	
i2l4424:
	bcf	(0+(4/8)+(c:3944)),c,(4)&7	;volatile
	line	2274
	
i2l4426:
	bsf	((c:3949)),c,1	;volatile
	line	2277
	
i2l4428:
	movlw	low(01h)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2284
	
i2l4430:
	movlw	high(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2285
	
i2l504:
	return
	opt stack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,88
	global	_USBStallHandler

;; *************** function _USBStallHandler *****************
;; Defined at:
;;		line 2202 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	2202
global __ptext17
__ptext17:
psect	text17
	file	"../src/usb/src/usb_device.c"
	line	2202
	global	__size_of_USBStallHandler
	__size_of_USBStallHandler	equ	__end_of_USBStallHandler-_USBStallHandler
	
_USBStallHandler:
;incstack = 0
	opt	stack 24
	line	2214
	
i2l4432:
	btfss	((c:3952)),c,0	;volatile
	goto	i2u393_41
	goto	i2u393_40
i2u393_41:
	goto	i2l499
i2u393_40:
	line	2217
	
i2l4434:
	movlw	(080h)&0ffh
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	cpfseq	indf2
	goto	i2u394_41
	goto	i2u394_40
i2u394_41:
	goto	i2l4442
i2u394_40:
	
i2l4436:
	movlw	(084h)&0ffh
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	cpfseq	indf2
	goto	i2u395_41
	goto	i2u395_40
i2u395_41:
	goto	i2l4442
i2u395_40:
	line	2220
	
i2l4438:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2221
	
i2l4440:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l4442
	line	2222
	
i2l500:
	line	2223
	
i2l4442:
	bcf	((c:3952)),c,0	;volatile
	line	2224
	
i2l499:
	line	2226
	bcf	(0+(5/8)+(c:3944)),c,(5)&7	;volatile
	line	2227
	
i2l501:
	return
	opt stack 0
GLOBAL	__end_of_USBStallHandler
	__end_of_USBStallHandler:
	signat	_USBStallHandler,88
	global	_USBCtrlEPService

;; *************** function _USBCtrlEPService *****************
;; Defined at:
;;		line 2369 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  setup_cnt       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       1       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_USBCtrlTrfInHandler
;;		_USBCtrlTrfOutHandler
;;		_USBCtrlTrfSetupHandler
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	2369
global __ptext18
__ptext18:
psect	text18
	file	"../src/usb/src/usb_device.c"
	line	2369
	global	__size_of_USBCtrlEPService
	__size_of_USBCtrlEPService	equ	__end_of_USBCtrlEPService-_USBCtrlEPService
	
_USBCtrlEPService:
;incstack = 0
	opt	stack 17
	line	2375
	
i2l4444:
	movlw	low(02Dh)
	movwf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	line	2379
	
i2l4446:
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0),c
	btfss	status,2
	goto	i2u396_41
	goto	i2u396_40
i2u396_41:
	goto	i2l4476
i2u396_40:
	line	2383
	
i2l4448:
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	bcf	status,0
	rrcf	(??_USBCtrlEPService+0+0),c

	movlw	03Fh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	mullw	04h
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	addwf	(prodl),c,w
	
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	movlb	4	; () banked
	movlw	high(1024)	;volatile
	addwfc	prod+1,w
	movwf	1+((c:_pBDTEntryEP0OutCurrent)),c
	line	2391
	
i2l4450:; BSR set to: 4

		movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)

	line	2393
	
i2l4452:; BSR set to: 4

	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryEP0OutNext)),c
	line	2396
	
i2l4454:; BSR set to: 4

	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	rrcf	(indf2),c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	i2u397_41
	goto	i2u397_40
i2u397_41:
	goto	i2l4474
i2u397_40:
	line	2404
	
i2l4456:; BSR set to: 4

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBCtrlEPService@setup_cnt))&0ffh
	
i2l4458:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBCtrlEPService@setup_cnt))&0ffh
	goto	i2u398_41
	goto	i2u398_40
i2u398_41:
	goto	i2l4462
i2u398_40:
	goto	i2l4470
	
i2l4460:; BSR set to: 0

	goto	i2l4470
	line	2405
	
i2l515:; BSR set to: 0

	line	2406
	
i2l4462:; BSR set to: 0

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movff	postinc2,??_USBCtrlEPService+0+0
	movff	postdec2,??_USBCtrlEPService+0+0+1
	movff	??_USBCtrlEPService+0+0,fsr2l
	movff	??_USBCtrlEPService+0+1,fsr2h
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBCtrlEPService@setup_cnt))&0ffh,w
	mullw	01h
	movlb	4	; () banked
	movlw	low(1056)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	4	; () banked
	movlw	high(1056)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	2407
	
i2l4464:; BSR set to: 4

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	2404
	
i2l4466:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBCtrlEPService@setup_cnt))&0ffh
	
i2l4468:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBCtrlEPService@setup_cnt))&0ffh
	goto	i2u399_41
	goto	i2u399_40
i2u399_41:
	goto	i2l4462
i2u399_40:
	goto	i2l4470
	
i2l516:; BSR set to: 0

	line	2409
	
i2l4470:; BSR set to: 0

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	2412
	
i2l4472:; BSR set to: 0

	call	_USBCtrlTrfSetupHandler	;wreg free
	line	2413
	goto	i2l520
	line	2414
	
i2l514:
	line	2417
	
i2l4474:
	call	_USBCtrlTrfOutHandler	;wreg free
	goto	i2l520
	line	2418
	
i2l517:
	line	2419
	goto	i2l520
	line	2420
	
i2l513:
	
i2l4476:
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	xorlw	04h

	btfss	status,2
	goto	i2u400_41
	goto	i2u400_40
i2u400_41:
	goto	i2l520
i2u400_40:
	line	2424
	
i2l4478:
	call	_USBCtrlTrfInHandler	;wreg free
	goto	i2l520
	line	2425
	
i2l519:
	goto	i2l520
	line	2427
	
i2l518:
	
i2l520:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPService
	__end_of_USBCtrlEPService:
	signat	_USBCtrlEPService,88
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 2469 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USBCheckStdRequest
;;		_USBCtrlEPServiceComplete
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	2469
global __ptext19
__ptext19:
psect	text19
	file	"../src/usb/src/usb_device.c"
	line	2469
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	opt	stack 17
	line	2474
	
i2l4330:
	movlw	low(0)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	2475
	movlw	low(0)
	movwf	((c:_USBDeferStatusStagePacket)),c	;volatile
	line	2476
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	2477
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	2478
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	2479
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2488
	
i2l4332:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2489
	
i2l4334:
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2490
	
i2l4336:; BSR set to: 0

	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2491
	
i2l4338:; BSR set to: 0

	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2492
	
i2l4340:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2494
	
i2l4342:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2495
	
i2l4344:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2496
	
i2l4346:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	2497
	
i2l4348:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	line	2503
	
i2l4350:; BSR set to: 0

	call	_USBCheckStdRequest	;wreg free
	line	2504
	
i2l4352:
	movlw	high(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2517
	
i2l4354:
	call	_USBCtrlEPServiceComplete	;wreg free
	line	2518
	
i2l523:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,88
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1616 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	1616
global __ptext20
__ptext20:
psect	text20
	file	"../src/usb/src/usb_device.c"
	line	1616
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	opt	stack 20
	line	1622
	
i2l4196:
	bcf	((c:3949)),c,4	;volatile
	line	1628
	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u371_41
	goto	i2u371_40
i2u371_41:
	goto	i2l423
i2u371_40:
	line	1630
	
i2l4198:; BSR set to: 0

	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u372_41
	goto	i2u372_40
i2u372_41:
	goto	i2l4210
i2u372_40:
	line	1632
	
i2l4200:; BSR set to: 0

	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1643
	
i2l4202:; BSR set to: 0

	tstfsz	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	goto	i2u373_41
	goto	i2u373_40
i2u373_41:
	goto	i2l4206
i2u373_40:
	line	1645
	
i2l4204:; BSR set to: 0

	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l4206
	line	1646
	
i2l425:
	line	1650
	
i2l4206:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1651
	
i2l4208:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1652
	goto	i2l433
	line	1653
	
i2l424:
	line	1659
	
i2l4210:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1660
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1661
	
i2l4212:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	1662
	
i2l4214:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1663
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1664
	
i2l4216:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l433
	line	1665
	
i2l426:
	line	1666
	goto	i2l433
	line	1667
	
i2l423:; BSR set to: 0

	line	1669
	movlb	4	; () banked
	btfss	((1056))&0ffh,7	;volatile
	goto	i2u374_41
	goto	i2u374_40
i2u374_41:
	goto	i2l4232
i2u374_40:
	line	1671
	
i2l4218:; BSR set to: 4

	movlw	low(01h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1685
	
i2l4220:; BSR set to: 4

	tstfsz	((c:_USBDeferINDataStagePackets)),c	;volatile
	goto	i2u375_41
	goto	i2u375_40
i2u375_41:
	goto	i2l4224
i2u375_40:
	line	1687
	
i2l4222:; BSR set to: 4

	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l4224
	line	1688
	
i2l429:
	line	1710
	
i2l4224:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1711
	
i2l4226:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1712
	
i2l4228:
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u376_41
	goto	i2u376_40
i2u376_41:
	goto	i2l433
i2u376_40:
	line	1714
	
i2l4230:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l433
	line	1715
	
i2l430:
	line	1716
	goto	i2l433
	line	1717
	
i2l428:
	line	1729
	
i2l4232:
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1732
	
i2l4234:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1733
	
i2l4236:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1734
	
i2l4238:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1735
	
i2l4240:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1738
	
i2l4242:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1739
	
i2l4244:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1740
	
i2l4246:
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u377_41
	goto	i2u377_40
i2u377_41:
	goto	i2l433
i2u377_40:
	line	1742
	
i2l4248:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l433
	line	1743
	
i2l432:
	goto	i2l433
	line	1744
	
i2l431:
	goto	i2l433
	line	1746
	
i2l427:
	line	1748
	
i2l433:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,88
	global	_USBCtrlEPAllowDataStage

;; *************** function _USBCtrlEPAllowDataStage *****************
;; Defined at:
;;		line 1488 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	1488
global __ptext21
__ptext21:
psect	text21
	file	"../src/usb/src/usb_device.c"
	line	1488
	global	__size_of_USBCtrlEPAllowDataStage
	__size_of_USBCtrlEPAllowDataStage	equ	__end_of_USBCtrlEPAllowDataStage-_USBCtrlEPAllowDataStage
	
_USBCtrlEPAllowDataStage:
;incstack = 0
	opt	stack 20
	line	1490
	
i2l3992:
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	1491
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	1493
	
i2l3994:
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u337_41
	goto	i2u337_40
i2u337_41:
	goto	i2l4002
i2u337_40:
	line	1496
	
i2l3996:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1497
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1498
	
i2l3998:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1499
	
i2l4000:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1500
	goto	i2l415
	line	1501
	
i2l412:
	line	1505
	
i2l4002:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_inPipes+04h))&0ffh,w	;volatile
	movlb	4	; () banked
	movlb	4	; () banked
	subwf	(0+(1056+06h))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_inPipes+04h))&0ffh,w	;volatile
	movlb	4	; () banked
	movlb	4	; () banked
	subwfb	(1+(1056+06h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u338_41
	goto	i2u338_40
i2u338_41:
	goto	i2l4006
i2u338_40:
	line	1507
	
i2l4004:; BSR set to: 4

	movff	0+(1056+06h),0+(_inPipes+04h)	;volatile
	movff	1+(1056+06h),1+(_inPipes+04h)	;volatile
	goto	i2l4006
	line	1508
	
i2l414:; BSR set to: 4

	line	1509
	
i2l4006:; BSR set to: 4

	call	_USBCtrlTrfTxService	;wreg free
	line	1514
	
i2l4008:
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1515
	
i2l4010:; BSR set to: 0

	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1516
	
i2l4012:; BSR set to: 0

	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l415
	line	1517
	
i2l413:; BSR set to: 0

	line	1518
	
i2l415:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowDataStage
	__end_of_USBCtrlEPAllowDataStage:
	signat	_USBCtrlEPAllowDataStage,88
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 2689 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USBStdFeatureReqHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdSetCfgHandler
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	2689
global __ptext22
__ptext22:
psect	text22
	file	"../src/usb/src/usb_device.c"
	line	2689
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	opt	stack 17
	line	2691
	
i2l4292:
	movlb	4	; () banked
	movlb	4	; () banked
	swapf	((1056))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	i2u383_41
	goto	i2u383_40
i2u383_41:
	goto	i2l4328
i2u383_40:
	goto	i2l548
	
i2l4294:; BSR set to: 4

	goto	i2l548
	
i2l547:; BSR set to: 4

	line	2693
	goto	i2l4328
	line	2695
	
i2l550:; BSR set to: 4

	line	2696
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2697
	
i2l4296:; BSR set to: 0

	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2699
	goto	i2l548
	line	2700
	
i2l552:; BSR set to: 0

	line	2701
	
i2l4298:
	call	_USBStdGetDscHandler	;wreg free
	line	2702
	goto	i2l548
	line	2703
	
i2l553:
	line	2704
	
i2l4300:
	call	_USBStdSetCfgHandler	;wreg free
	line	2705
	goto	i2l548
	line	2706
	
i2l554:
	line	2707
	
i2l4302:
		movlw	high((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2708
	
i2l4304:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2709
	
i2l4306:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2710
	
i2l4308:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2711
	goto	i2l548
	line	2712
	
i2l555:; BSR set to: 0

	line	2713
	
i2l4310:
	call	_USBStdGetStatusHandler	;wreg free
	line	2714
	goto	i2l548
	line	2715
	
i2l556:
	goto	i2l4312
	line	2716
	
i2l557:
	line	2717
	
i2l4312:
	call	_USBStdFeatureReqHandler	;wreg free
	line	2718
	goto	i2l548
	line	2719
	
i2l558:
	line	2720
	
i2l4314:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	movwf	(??_USBCheckStdRequest+0+0)&0ffh,c
	movlw	high((c:_USBAlternateInterface))	;volatile
	movwf	(??_USBCheckStdRequest+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBCheckStdRequest+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBCheckStdRequest+0+1),c
	movff	??_USBCheckStdRequest+0+0,(_inPipes)	;volatile
	movff	??_USBCheckStdRequest+0+1,(_inPipes+1)	;volatile
	line	2721
	
i2l4316:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2722
	
i2l4318:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2723
	
i2l4320:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2724
	goto	i2l548
	line	2725
	
i2l559:; BSR set to: 4

	line	2726
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2727
	
i2l4322:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_USBAlternateInterface))	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	4	; () banked
	movff	0+(1056+02h),indf2	;volatile

	line	2728
	goto	i2l548
	line	2729
	
i2l560:; BSR set to: 4

	line	2730
	
i2l4324:; BSR set to: 4

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2731
	goto	i2l548
	line	2732
	
i2l561:
	goto	i2l548
	line	2733
	
i2l562:
	line	2734
	goto	i2l548
	line	2735
	
i2l4326:
	goto	i2l548
	line	2693
	
i2l549:
	
i2l4328:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l4310
	xorlw	1^0	; case 1
	skipnz
	goto	i2l4312
	xorlw	3^1	; case 3
	skipnz
	goto	i2l4312
	xorlw	5^3	; case 5
	skipnz
	goto	i2l550
	xorlw	6^5	; case 6
	skipnz
	goto	i2l4298
	xorlw	7^6	; case 7
	skipnz
	goto	i2l4324
	xorlw	8^7	; case 8
	skipnz
	goto	i2l4302
	xorlw	9^8	; case 9
	skipnz
	goto	i2l4300
	xorlw	10^9	; case 10
	skipnz
	goto	i2l4314
	xorlw	11^10	; case 11
	skipnz
	goto	i2l559
	xorlw	12^11	; case 12
	skipnz
	goto	i2l548
	goto	i2l548

	line	2735
	
i2l551:; BSR set to: 4

	line	2736
	
i2l548:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,88
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 1968 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   39[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_memset
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	1968
global __ptext23
__ptext23:
psect	text23
	file	"../src/usb/src/usb_device.c"
	line	1968
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	opt	stack 17
	line	1973
	
i2l4014:
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	1976
	
i2l4016:; BSR set to: 0

		movlw	high((c:3953))	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlw	low((c:3953))	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1979
	movlb	4	; () banked
		movlw	high(1024)	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(020h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(020h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1982
	
i2l4018:
	bsf	((c:3949)),c,6	;volatile
	line	1987
	
i2l4020:
	movlw	low(0)
	movwf	((c:USBStdSetCfgHandler@i)),c
	
i2l4022:
	movlw	(02h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u339_41
	goto	i2u339_40
i2u339_41:
	goto	i2l4026
i2u339_40:
	goto	i2l4032
	
i2l4024:
	goto	i2l4032
	line	1988
	
i2l464:
	line	1989
	
i2l4026:
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	1990
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	1987
	
i2l4028:; BSR set to: 0

	incf	((c:USBStdSetCfgHandler@i)),c
	
i2l4030:; BSR set to: 0

	movlw	(02h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u340_41
	goto	i2u340_40
i2u340_41:
	goto	i2l4026
i2u340_40:
	goto	i2l4032
	
i2l465:; BSR set to: 0

	line	1994
	
i2l4032:
		movlw	high((c:_USBAlternateInterface))	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlw	low((c:_USBAlternateInterface))	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1997
	
i2l4034:
	bcf	((c:3949)),c,6	;volatile
	line	1999
	
i2l4036:
	movlb	4	; () banked
		movlw	high(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	4	; () banked
	movlw	low(1024+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	2002
	
i2l4038:; BSR set to: 0

	movlb	4	; () banked
		movlw	high(1024)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent+1)),c
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent)),c

	line	2003
	
i2l4040:; BSR set to: 4

		movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)

	line	2006
	
i2l4042:; BSR set to: 4

	movff	0+(1056+02h),(c:_USBActiveConfiguration)	;volatile
	line	2009
	
i2l4044:; BSR set to: 4

	tstfsz	((c:_USBActiveConfiguration)),c	;volatile
	goto	i2u341_41
	goto	i2u341_40
i2u341_41:
	goto	i2l4048
i2u341_40:
	line	2012
	
i2l4046:; BSR set to: 4

	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2013
	goto	i2l468
	line	2014
	
i2l466:; BSR set to: 0

	line	2017
	
i2l4048:
	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high((c:_USBActiveConfiguration))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2022
	
i2l4050:
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l468
	line	2023
	
i2l467:; BSR set to: 0

	line	2024
	
i2l468:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,88
	global	i2_memset

;; *************** function i2_memset *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2   17[COMRAM] PTR void 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), ToSendDataBuffer(64), 
;;  c               2   19[COMRAM] int 
;;  n               2   21[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  memset          2   23[COMRAM] PTR unsigned char 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), ToSendDataBuffer(64), 
;; Return value:  Size  Location     Type
;;                  2   17[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBStdSetCfgHandler
;;		i2_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
	line	8
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\memset.c"
	line	8
	global	__size_ofi2_memset
	__size_ofi2_memset	equ	__end_ofi2_memset-i2_memset
	
i2_memset:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	18
	
i2l3948:
		movff	(c:i2memset@p1+1),(c:i2memset@p+1)
	movff	(c:i2memset@p1),(c:i2memset@p)

	line	19
	goto	i2l3954
	
i2l1202:
	line	20
	
i2l3950:
	movff	(c:i2memset@p),fsr2l
	movff	(c:i2memset@p+1),fsr2h
	movff	(c:i2memset@c),indf2

	
i2l3952:
	infsnz	((c:i2memset@p)),c
	incf	((c:i2memset@p+1)),c
	goto	i2l3954
	
i2l1201:
	line	19
	
i2l3954:
	decf	((c:i2memset@n)),c
	btfss	status,0
	decf	((c:i2memset@n+1)),c
	incf	((c:i2memset@n))&0ffh,w
	btfsc	status,2
	incf ((c:i2memset@n+1))&0ffh,w

	btfss	status,2
	goto	i2u332_41
	goto	i2u332_40
i2u332_41:
	goto	i2l3950
i2u332_40:
	goto	i2l1204
	
i2l1203:
	line	22
;	Return value of i2_memset is never used
	
i2l1204:
	return
	opt stack 0
GLOBAL	__end_ofi2_memset
	__end_ofi2_memset:
	signat	i2_memset,90
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 2129 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   18[COMRAM] PTR struct __BDT
;;		 -> BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device.c"
	line	2129
global __ptext25
__ptext25:
psect	text25
	file	"../src/usb/src/usb_device.c"
	line	2129
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	opt	stack 21
	line	2131
	
i2l4082:
	movlw	low(0)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	((1064))&0ffh	;volatile
	line	2132
	movlw	low(0)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	(0+(1064+01h))&0ffh	;volatile
	line	2134
	goto	i2l4102
	line	2136
	
i2l486:; BSR set to: 4

	line	2137
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2142
	goto	i2l4086
	line	2144
	
i2l4084:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	bsf	(0+(0/8)+(1064))&0ffh,(0)&7	;volatile
	goto	i2l4086
	line	2145
	
i2l487:; BSR set to: 4

	line	2147
	
i2l4086:
	decf	((c:_RemoteWakeup)),c,w	;volatile

	btfss	status,2
	goto	i2u348_41
	goto	i2u348_40
i2u348_41:
	goto	i2l489
i2u348_40:
	line	2149
	
i2l4088:
	movlb	4	; () banked
	movlb	4	; () banked
	bsf	(0+(1/8)+(1064))&0ffh,(1)&7	;volatile
	goto	i2l489
	line	2150
	
i2l488:; BSR set to: 4

	line	2151
	goto	i2l489
	line	2152
	
i2l490:; BSR set to: 4

	line	2153
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2154
	goto	i2l489
	line	2155
	
i2l491:; BSR set to: 4

	line	2156
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2163
	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	i2u349_41
	goto	i2u349_40
i2u349_41:
	goto	i2l4092
i2u349_40:
	line	2165
	
i2l4090:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	line	2166
	goto	i2l4094
	line	2167
	
i2l492:; BSR set to: 0

	line	2169
	
i2l4092:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	goto	i2l4094
	line	2170
	
i2l493:; BSR set to: 0

	line	2172
	
i2l4094:; BSR set to: 0

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u350_41
	goto	i2u350_40
i2u350_41:
	goto	i2l489
i2u350_40:
	
i2l4096:; BSR set to: 0

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	indf2,2
	goto	i2u351_41
	goto	i2u351_40
i2u351_41:
	goto	i2l489
i2u351_40:
	line	2173
	
i2l4098:; BSR set to: 0

	movlw	low(01h)
	movlb	4	; () banked
	movlb	4	; () banked
	movwf	((1064))&0ffh	;volatile
	goto	i2l489
	
i2l494:; BSR set to: 4

	line	2174
	goto	i2l489
	line	2176
	
i2l4100:; BSR set to: 4

	goto	i2l489
	line	2134
	
i2l485:; BSR set to: 4

	
i2l4102:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l486
	xorlw	1^0	; case 1
	skipnz
	goto	i2l490
	xorlw	2^1	; case 2
	skipnz
	goto	i2l491
	goto	i2l489

	line	2176
	
i2l489:
	line	2178
	movlb	0	; () banked
	btfss	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u352_41
	goto	i2u352_40
i2u352_41:
	goto	i2l496
i2u352_40:
	line	2180
	
i2l4104:; BSR set to: 0

	movlb	4	; () banked
		movlw	high(1064)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlb	4	; () banked
	movlw	low(1064)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2181
	
i2l4106:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2182
	
i2l4108:; BSR set to: 0

	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	goto	i2l496
	line	2183
	
i2l495:; BSR set to: 0

	line	2184
	
i2l496:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,88
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 2043 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	2043
global __ptext26
__ptext26:
psect	text26
	file	"../src/usb/src/usb_device.c"
	line	2043
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	2045
	
i2l4052:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	xorlw	128

	btfss	status,2
	goto	i2u342_41
	goto	i2u342_40
i2u342_41:
	goto	i2l482
i2u342_40:
	line	2047
	
i2l4054:; BSR set to: 4

	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2049
	goto	i2l4080
	line	2051
	
i2l473:; BSR set to: 0

	line	2055
	
i2l4056:
		movlw	high(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2057
	
i2l4058:; BSR set to: 0

	movlw	high(012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(012h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2058
	goto	i2l482
	line	2059
	
i2l475:; BSR set to: 4

	line	2063
	movlb	4	; () banked
	movlb	4	; () banked
	tstfsz	(0+(1056+02h))&0ffh	;volatile
	goto	i2u343_41
	goto	i2u343_40
i2u343_41:
	goto	i2l4066
i2u343_40:
	line	2068
	
i2l4060:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_CD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_CD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile

	line	2074
	
i2l4062:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u344_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u344_40
i2u344_47:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
i2u344_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2075
	
i2l4064:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u345_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u345_40
i2u345_47:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
i2u345_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+05h))&0ffh	;volatile
	line	2076
	goto	i2l482
	line	2077
	
i2l476:; BSR set to: 0

	line	2079
	
i2l4066:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l482
	line	2080
	
i2l477:; BSR set to: 0

	line	2081
	goto	i2l482
	line	2082
	
i2l478:; BSR set to: 0

	line	2086
	
i2l4068:
	movlw	(03h)&0ffh
	movlb	4	; () banked
	movlb	4	; () banked
	subwf	(0+(1056+02h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u346_41
	goto	i2u346_40
i2u346_41:
	goto	i2l4074
i2u346_40:
	line	2089
	
i2l4070:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_SD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_SD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile

	line	2091
	
i2l4072:; BSR set to: 0

	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u347_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u347_40
i2u347_47:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
i2u347_40:
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movf	((??_USBStdGetDscHandler+0+0)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlb	0	; () banked
	clrf	(1+(_inPipes+04h))&0ffh	;volatile
	line	2092
	goto	i2l482
	line	2102
	
i2l479:; BSR set to: 0

	line	2104
	
i2l4074:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l482
	line	2105
	
i2l480:; BSR set to: 0

	line	2106
	goto	i2l482
	line	2107
	
i2l481:; BSR set to: 0

	line	2108
	
i2l4076:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2109
	goto	i2l482
	line	2110
	
i2l4078:; BSR set to: 0

	goto	i2l482
	line	2049
	
i2l472:; BSR set to: 0

	
i2l4080:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l4056
	xorlw	2^1	; case 2
	skipnz
	goto	i2l475
	xorlw	3^2	; case 3
	skipnz
	goto	i2l4068
	goto	i2l4076

	line	2110
	
i2l474:; BSR set to: 4

	goto	i2l482
	line	2111
	
i2l471:; BSR set to: 4

	line	2112
	
i2l482:
	return
	opt stack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,88
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 2757 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   45[COMRAM] PTR struct __BDT
;;		 -> BDT(32), NULL(0), 
;;  pUEP            2   42[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;;  current_ep_d    1   44[COMRAM] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	2757
global __ptext27
__ptext27:
psect	text27
	file	"../src/usb/src/usb_device.c"
	line	2757
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	opt	stack 17
	line	2803
	
i2l4110:
	movlb	4	; () banked
	movlb	4	; () banked
	decf	(0+(1056+02h))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u353_41
	goto	i2u353_40
i2u353_41:
	goto	i2l4122
i2u353_40:
	
i2l4112:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	i2u354_41
	goto	i2u354_40
i2u354_41:
	goto	i2l4122
i2u354_40:
	line	2805
	
i2l4114:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2806
	
i2l4116:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u355_41
	goto	i2u355_40
i2u355_41:
	goto	i2l4120
i2u355_40:
	line	2807
	
i2l4118:; BSR set to: 4

	movlw	low(01h)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l4122
	line	2808
	
i2l566:; BSR set to: 4

	line	2809
	
i2l4120:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l4122
	
i2l567:; BSR set to: 4

	goto	i2l4122
	line	2810
	
i2l565:; BSR set to: 4

	line	2816
	
i2l4122:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	tstfsz	(0+(1056+02h))&0ffh	;volatile
	goto	i2u356_41
	goto	i2u356_40
i2u356_41:
	goto	i2l588
i2u356_40:
	
i2l4124:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	i2u357_41
	goto	i2u357_40
i2u357_41:
	goto	i2l588
i2u357_40:
	
i2l4126:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	i2u358_41
	goto	i2u358_40
i2u358_41:
	goto	i2l588
i2u358_40:
	
i2l4128:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movlw	(02h)&0ffh
	subwf	((??_USBStdFeatureReqHandler+0+0)),c,w
	btfsc	status,0
	goto	i2u359_41
	goto	i2u359_40
i2u359_41:
	goto	i2l588
i2u359_40:
	
i2l4130:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	32

	btfss	status,2
	goto	i2u360_41
	goto	i2u360_40
i2u360_41:
	goto	i2l588
i2u360_40:
	line	2820
	
i2l4132:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2823
	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	i2u361_41
	goto	i2u361_40
i2u361_41:
	goto	i2l4136
i2u361_40:
	line	2825
	
i2l4134:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2826
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	line	2827
	goto	i2l4138
	line	2828
	
i2l569:; BSR set to: 0

	line	2830
	
i2l4136:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2831
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	goto	i2l4138
	line	2832
	
i2l570:; BSR set to: 0

	line	2838
	
i2l4138:; BSR set to: 0

	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,0
	goto	i2u362_41
	goto	i2u362_40
i2u362_41:
	goto	i2l4142
i2u362_40:
	line	2840
	
i2l4140:; BSR set to: 0

	bcf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	line	2841
	goto	i2l4144
	line	2842
	
i2l571:; BSR set to: 0

	line	2844
	
i2l4142:; BSR set to: 0

	bsf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	goto	i2l4144
	line	2845
	
i2l572:; BSR set to: 0

	line	2850
	
i2l4144:; BSR set to: 0

	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	i2u363_41
	goto	i2u363_40
i2u363_41:
	goto	i2l4148
i2u363_40:
	line	2852
	
i2l4146:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	2853
	goto	i2l4150
	line	2854
	
i2l573:; BSR set to: 0

	line	2856
	
i2l4148:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	goto	i2l4150
	line	2857
	
i2l574:; BSR set to: 0

	line	2860
	
i2l4150:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u364_41
	goto	i2u364_40
i2u364_41:
	goto	i2l4164
i2u364_40:
	line	2862
	
i2l4152:; BSR set to: 4

	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u365_41
	goto	i2u365_40
i2u365_41:
	goto	i2l4160
i2u365_40:
	line	2866
	
i2l4154:; BSR set to: 4

	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	i2u366_41
	goto	i2u366_40
i2u366_41:
	goto	i2l4158
i2u366_40:
	line	2868
	
i2l4156:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	indf2,1
	line	2869
	goto	i2l4160
	line	2870
	
i2l577:; BSR set to: 0

	line	2872
	
i2l4158:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	indf2,1
	goto	i2l4160
	line	2873
	
i2l578:; BSR set to: 0

	goto	i2l4160
	line	2874
	
i2l576:; BSR set to: 0

	line	2877
	
i2l4160:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(2/8)
	bsf	plusw2,(2)&7
	line	2878
	
i2l4162:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2879
	goto	i2l588
	line	2880
	
i2l575:
	line	2885
	
i2l4164:
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	2887
	
i2l4166:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u367_41
	goto	i2u367_40
i2u367_41:
	goto	i2l4174
i2u367_40:
	line	2891
	
i2l4168:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2892
	
i2l4170:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	2893
	
i2l4172:
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)
	movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2894
	goto	i2l4176
	line	2895
	
i2l580:
	line	2898
	
i2l4174:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	goto	i2l4176
	line	2899
	
i2l581:
	line	2903
	
i2l4176:
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	2909
	
i2l4178:
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,1
	goto	i2u368_41
	goto	i2u368_40
i2u368_41:
	goto	i2l584
i2u368_40:
	
i2l4180:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u369_41
	goto	i2u369_40
i2u369_41:
	goto	i2l4190
i2u369_40:
	
i2l584:
	line	2911
	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	i2u370_41
	goto	i2u370_40
i2u370_41:
	goto	i2l4184
i2u370_40:
	line	2913
	
i2l4182:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	indf2,1
	line	2914
	goto	i2l4186
	line	2915
	
i2l585:; BSR set to: 0

	line	2917
	
i2l4184:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	indf2,1
	goto	i2l4186
	line	2918
	
i2l586:; BSR set to: 0

	line	2920
	
i2l4186:; BSR set to: 0

	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	2923
	
i2l4188:; BSR set to: 0

	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)
	movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2924
	goto	i2l4192
	line	2925
	
i2l582:
	line	2928
	
i2l4190:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	goto	i2l4192
	line	2929
	
i2l587:
	line	2976
	
i2l4192:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low((c:3952))	;volatile
	movwf	(??_USBStdFeatureReqHandler+1+0)&0ffh,c
	movlw	high((c:3952))	;volatile
	movwf	(??_USBStdFeatureReqHandler+1+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBStdFeatureReqHandler+1+0),c
	movf	(prodh),c,w
	addwfc	(??_USBStdFeatureReqHandler+1+1),c
	movff	??_USBStdFeatureReqHandler+1+0,(c:USBStdFeatureReqHandler@pUEP)
	movff	??_USBStdFeatureReqHandler+1+1,(c:USBStdFeatureReqHandler@pUEP+1)
	line	2980
	
i2l4194:; BSR set to: 4

	movff	(c:USBStdFeatureReqHandler@pUEP),fsr2l
	movff	(c:USBStdFeatureReqHandler@pUEP+1),fsr2h
	movlw	0FEh
	andwf	indf2
	goto	i2l588
	line	2981
	
i2l579:; BSR set to: 4

	goto	i2l588
	line	2982
	
i2l568:; BSR set to: 4

	line	2983
	
i2l588:
	return
	opt stack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,88
	global	_USER_USB_CALLBACK_EVENT_HANDLER

;; *************** function _USER_USB_CALLBACK_EVENT_HANDLER *****************
;; Defined at:
;;		line 122 in file "../src/main_hid.c"
;; Parameters:    Size  Location     Type
;;  event           2   31[COMRAM] enum E4822
;;  pdata           2   33[COMRAM] PTR void 
;;		 -> USTATcopy(1), USBActiveConfiguration(1), BDT(32), NULL(0), 
;;  size            2   35[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_APP_CustomHIDInitialize
;;		_APP_USBCBErrorHandler
;;		_APP_USBCBSuspend
;;		_APP_USBCBWakeFromSuspend
;;		_APP_USBCB_SOF_Handler
;;		_USBCheckHIDRequest
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBStdSetCfgHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USBCtrlTrfSetupHandler
;;		_USBCheckStdRequest
;;		_USBStdFeatureReqHandler
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"../src/main_hid.c"
	line	122
global __ptext28
__ptext28:
psect	text28
	file	"../src/main_hid.c"
	line	122
	global	__size_of_USER_USB_CALLBACK_EVENT_HANDLER
	__size_of_USER_USB_CALLBACK_EVENT_HANDLER	equ	__end_of_USER_USB_CALLBACK_EVENT_HANDLER-_USER_USB_CALLBACK_EVENT_HANDLER
	
_USER_USB_CALLBACK_EVENT_HANDLER:
;incstack = 0
	opt	stack 21
	line	124
	
i2l3880:
	goto	i2l3896
	line	126
	
i2l150:
	line	128
	goto	i2l161
	line	129
	
i2l152:
	line	130
	
i2l3882:
	call	_APP_USBCB_SOF_Handler	;wreg free
	line	134
	goto	i2l161
	line	135
	
i2l153:
	line	136
	
i2l3884:
	call	_APP_USBCBSuspend	;wreg free
	line	139
	goto	i2l161
	line	140
	
i2l154:
	line	141
	
i2l3886:
	call	_APP_USBCBWakeFromSuspend	;wreg free
	line	144
	goto	i2l161
	line	145
	
i2l155:
	line	149
	
i2l3888:
	call	_APP_CustomHIDInitialize	;wreg free
	line	150
	goto	i2l161
	line	151
	
i2l156:
	line	153
	goto	i2l161
	line	154
	
i2l157:
	line	158
	
i2l3890:
	call	_USBCheckHIDRequest	;wreg free
	line	159
	goto	i2l161
	line	160
	
i2l158:
	line	161
	
i2l3892:
	call	_APP_USBCBErrorHandler	;wreg free
	line	162
	goto	i2l161
	line	163
	
i2l159:
	line	172
	goto	i2l161
	line	173
	
i2l160:
	line	174
	goto	i2l161
	line	175
	
i2l3894:
	goto	i2l161
	line	124
	
i2l149:
	
i2l3896:
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event+1),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 127
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l4718
	xorlw	127^0	; case 127
	skipnz
	goto	i2l4720
	goto	i2l161
	
i2l4718:
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3888
	xorlw	2^1	; case 2
	skipnz
	goto	i2l161
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3890
	xorlw	5^3	; case 5
	skipnz
	goto	i2l161
	xorlw	114^5	; case 114
	skipnz
	goto	i2l161
	xorlw	115^114	; case 115
	skipnz
	goto	i2l3882
	xorlw	116^115	; case 116
	skipnz
	goto	i2l3886
	xorlw	117^116	; case 117
	skipnz
	goto	i2l3884
	goto	i2l161
	
i2l4720:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 255 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	255^0	; case 255
	skipnz
	goto	i2l3892
	goto	i2l161

	line	175
	
i2l151:
	line	177
;	Return value of _USER_USB_CALLBACK_EVENT_HANDLER is never used
	
i2l161:
	return
	opt stack 0
GLOBAL	__end_of_USER_USB_CALLBACK_EVENT_HANDLER
	__end_of_USER_USB_CALLBACK_EVENT_HANDLER:
	signat	_USER_USB_CALLBACK_EVENT_HANDLER,12409
	global	_USBCheckHIDRequest

;; *************** function _USBCheckHIDRequest *****************
;; Defined at:
;;		line 157 in file "../src/usb/src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_APP_USBCBCheckOtherReq
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device_hid.c"
	line	157
global __ptext29
__ptext29:
psect	text29
	file	"../src/usb/src/usb_device_hid.c"
	line	157
	global	__size_of_USBCheckHIDRequest
	__size_of_USBCheckHIDRequest	equ	__end_of_USBCheckHIDRequest-_USBCheckHIDRequest
	
_USBCheckHIDRequest:
;incstack = 0
	opt	stack 23
	line	159
	
i2l3822:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	movwf	(??_USBCheckHIDRequest+0+0)&0ffh,c
	decf	((??_USBCheckHIDRequest+0+0)),c,w
	btfsc	status,2
	goto	i2u319_41
	goto	i2u319_40
i2u319_41:
	goto	i2l3826
i2u319_40:
	goto	i2l606
	
i2l3824:; BSR set to: 4

	goto	i2l606
	
i2l605:; BSR set to: 4

	line	160
	
i2l3826:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u320_41
	goto	i2u320_40
i2u320_41:
	goto	i2l3830
i2u320_40:
	goto	i2l606
	
i2l3828:; BSR set to: 4

	goto	i2l606
	
i2l607:; BSR set to: 4

	line	167
	
i2l3830:; BSR set to: 4

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+01h))&0ffh,w	;volatile
	xorlw	6

	btfss	status,2
	goto	i2u321_41
	goto	i2u321_40
i2u321_41:
	goto	i2l3852
i2u321_40:
	goto	i2l3850
	line	169
	
i2l3832:; BSR set to: 4

	goto	i2l3850
	line	171
	
i2l610:; BSR set to: 4

	line	172
	
i2l3834:; BSR set to: 4

	decf	((c:_USBActiveConfiguration)),c,w	;volatile

	btfss	status,2
	goto	i2u322_41
	goto	i2u322_40
i2u322_41:
	goto	i2l3852
i2u322_40:
	line	174
	
i2l3836:; BSR set to: 4

		movlw	high(_configDescriptor1+012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_configDescriptor1+012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l3838:; BSR set to: 0

	movlw	high(09h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(09h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l3840:; BSR set to: 0

	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l3852
	line	178
	
i2l611:; BSR set to: 0

	line	179
	goto	i2l3852
	line	180
	
i2l613:; BSR set to: 0

	line	183
	
i2l3842:
		movlw	high(_hid_rpt01)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_hid_rpt01)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l3844:; BSR set to: 0

	movlw	high(01Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01Dh)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l3846:; BSR set to: 0

	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	188
	goto	i2l3852
	line	189
	
i2l614:; BSR set to: 0

	line	201
	goto	i2l3852
	line	202
	
i2l3848:; BSR set to: 0

	goto	i2l3852
	line	169
	
i2l609:; BSR set to: 0

	
i2l3850:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 33 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	33^0	; case 33
	skipnz
	goto	i2l3834
	xorlw	34^33	; case 34
	skipnz
	goto	i2l3842
	xorlw	35^34	; case 35
	skipnz
	goto	i2l3852
	goto	i2l3852

	line	202
	
i2l612:; BSR set to: 4

	goto	i2l3852
	line	203
	
i2l608:; BSR set to: 4

	line	205
	
i2l3852:
	movlb	4	; () banked
	movlb	4	; () banked
	swapf	((1056))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	movwf	(??_USBCheckHIDRequest+0+0)&0ffh,c
	decf	((??_USBCheckHIDRequest+0+0)),c,w
	btfsc	status,2
	goto	i2u323_41
	goto	i2u323_40
i2u323_41:
	goto	i2l3878
i2u323_40:
	goto	i2l606
	line	207
	
i2l3854:; BSR set to: 4

	goto	i2l606
	line	208
	
i2l615:; BSR set to: 4

	line	210
	goto	i2l3878
	line	212
	
i2l617:; BSR set to: 4

	line	216
	goto	i2l606
	line	217
	
i2l619:; BSR set to: 4

	line	221
	goto	i2l606
	line	222
	
i2l620:; BSR set to: 4

	line	223
	
i2l3856:; BSR set to: 4

		movlw	high((c:_idle_rate))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_idle_rate))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l3858:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l3860:; BSR set to: 0

	movlw	low(0C1h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	227
	goto	i2l606
	line	228
	
i2l621:; BSR set to: 0

	line	229
	
i2l3862:
	movlw	low(080h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	230
	
i2l3864:; BSR set to: 0

	movff	0+(1056+03h),(c:_idle_rate)
	line	232
	goto	i2l606
	line	233
	
i2l622:; BSR set to: 0

	line	234
	
i2l3866:
		movlw	high((c:_active_protocol))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_active_protocol))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l3868:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l3870:; BSR set to: 0

	movlw	low(081h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	238
	goto	i2l606
	line	239
	
i2l623:; BSR set to: 0

	line	240
	
i2l3872:
	movlw	low(080h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	241
	
i2l3874:; BSR set to: 0

	movff	0+(1056+02h),(c:_active_protocol)
	line	242
	goto	i2l606
	line	243
	
i2l3876:; BSR set to: 0

	goto	i2l606
	line	210
	
i2l616:; BSR set to: 0

	
i2l3878:
	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l606
	xorlw	2^1	; case 2
	skipnz
	goto	i2l3856
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3866
	xorlw	9^3	; case 9
	skipnz
	goto	i2l606
	xorlw	10^9	; case 10
	skipnz
	goto	i2l3862
	xorlw	11^10	; case 11
	skipnz
	goto	i2l3872
	goto	i2l606

	line	243
	
i2l618:; BSR set to: 4

	line	245
	
i2l606:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckHIDRequest
	__end_of_USBCheckHIDRequest:
	signat	_USBCheckHIDRequest,88
	global	_APP_USBCB_SOF_Handler

;; *************** function _APP_USBCB_SOF_Handler *****************
;; Defined at:
;;		line 261 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"../src/app_custom_hid.c"
	line	261
global __ptext30
__ptext30:
psect	text30
	file	"../src/app_custom_hid.c"
	line	261
	global	__size_of_APP_USBCB_SOF_Handler
	__size_of_APP_USBCB_SOF_Handler	equ	__end_of_APP_USBCB_SOF_Handler-_APP_USBCB_SOF_Handler
	
_APP_USBCB_SOF_Handler:
;incstack = 0
	opt	stack 23
	line	265
	
i2l94:
	return
	opt stack 0
GLOBAL	__end_of_APP_USBCB_SOF_Handler
	__end_of_APP_USBCB_SOF_Handler:
	signat	_APP_USBCB_SOF_Handler,88
	global	_APP_USBCBWakeFromSuspend

;; *************** function _APP_USBCBWakeFromSuspend *****************
;; Defined at:
;;		line 229 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_USBCBSendResume
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	line	229
global __ptext31
__ptext31:
psect	text31
	file	"../src/app_custom_hid.c"
	line	229
	global	__size_of_APP_USBCBWakeFromSuspend
	__size_of_APP_USBCBWakeFromSuspend	equ	__end_of_APP_USBCBWakeFromSuspend-_APP_USBCBWakeFromSuspend
	
_APP_USBCBWakeFromSuspend:
;incstack = 0
	opt	stack 23
	line	241
	
i2l91:
	return
	opt stack 0
GLOBAL	__end_of_APP_USBCBWakeFromSuspend
	__end_of_APP_USBCBWakeFromSuspend:
	signat	_APP_USBCBWakeFromSuspend,88
	global	_APP_USBCBSuspend

;; *************** function _APP_USBCBSuspend *****************
;; Defined at:
;;		line 187 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	187
global __ptext32
__ptext32:
psect	text32
	file	"../src/app_custom_hid.c"
	line	187
	global	__size_of_APP_USBCBSuspend
	__size_of_APP_USBCBSuspend	equ	__end_of_APP_USBCBSuspend-_APP_USBCBSuspend
	
_APP_USBCBSuspend:
;incstack = 0
	opt	stack 23
	line	205
	
i2l88:
	return
	opt stack 0
GLOBAL	__end_of_APP_USBCBSuspend
	__end_of_APP_USBCBSuspend:
	signat	_APP_USBCBSuspend,88
	global	_APP_USBCBErrorHandler

;; *************** function _APP_USBCBErrorHandler *****************
;; Defined at:
;;		line 284 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	284
global __ptext33
__ptext33:
psect	text33
	file	"../src/app_custom_hid.c"
	line	284
	global	__size_of_APP_USBCBErrorHandler
	__size_of_APP_USBCBErrorHandler	equ	__end_of_APP_USBCBErrorHandler-_APP_USBCBErrorHandler
	
_APP_USBCBErrorHandler:
;incstack = 0
	opt	stack 23
	line	304
	
i2l97:
	return
	opt stack 0
GLOBAL	__end_of_APP_USBCBErrorHandler
	__end_of_APP_USBCBErrorHandler:
	signat	_APP_USBCBErrorHandler,88
	global	_APP_CustomHIDInitialize

;; *************** function _APP_CustomHIDInitialize *****************
;; Defined at:
;;		line 42 in file "../src/app_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBEnableEndpoint
;;		i2_USBTransferOnePacket
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	42
global __ptext34
__ptext34:
psect	text34
	file	"../src/app_custom_hid.c"
	line	42
	global	__size_of_APP_CustomHIDInitialize
	__size_of_APP_CustomHIDInitialize	equ	__end_of_APP_CustomHIDInitialize-_APP_CustomHIDInitialize
	
_APP_CustomHIDInitialize:
;incstack = 0
	opt	stack 21
	line	45
	
i2l3816:
		movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBInHandle+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBInHandle))&0ffh

	line	49
	
i2l3818:; BSR set to: 0

	movlw	low(01Eh)
	movwf	((c:USBEnableEndpoint@options)),c
	movlw	(01h)&0ffh
	
	call	_USBEnableEndpoint
	line	53
	
i2l3820:
	movlw	low(0)
	movwf	((c:i2USBTransferOnePacket@dir)),c
	movlb	5	; () banked
		movlw	high(1280)
	movwf	((c:i2USBTransferOnePacket@data+1)),c
	movlb	5	; () banked
	movlw	low(1280)
	movwf	((c:i2USBTransferOnePacket@data)),c

	movlw	low(040h)
	movwf	((c:i2USBTransferOnePacket@len)),c
	movlw	(01h)&0ffh
	
	call	i2_USBTransferOnePacket
	movff	0+?i2_USBTransferOnePacket,(_USBOutHandle)
	movff	1+?i2_USBTransferOnePacket,(_USBOutHandle+1)
	line	54
	
i2l43:
	return
	opt stack 0
GLOBAL	__end_of_APP_CustomHIDInitialize
	__end_of_APP_CustomHIDInitialize:
	signat	_APP_CustomHIDInitialize,88
	global	i2_USBTransferOnePacket

;; *************** function i2_USBTransferOnePacket *****************
;; Defined at:
;;		line 995 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1   17[COMRAM] unsigned char 
;;  data            2   18[COMRAM] PTR unsigned char 
;;		 -> ToSendDataBuffer(64), ReceivedDataBuffer(64), 
;;  len             1   20[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   21[COMRAM] unsigned char 
;;  USBTransferO    2   22[COMRAM] PTR volatile struct __BD
;;		 -> BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2   17[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_CustomHIDInitialize
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"../src/usb/src/usb_device.c"
	line	995
global __ptext35
__ptext35:
psect	text35
	file	"../src/usb/src/usb_device.c"
	line	995
	global	__size_ofi2_USBTransferOnePacket
	__size_ofi2_USBTransferOnePacket	equ	__end_ofi2_USBTransferOnePacket-i2_USBTransferOnePacket
	
i2_USBTransferOnePacket:
;incstack = 0
	opt	stack 22
	movwf	((c:i2USBTransferOnePacket@ep)),c
	line	1000
	
i2l3786:
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u316_41
	goto	i2u316_40
i2u316_41:
	goto	i2l3790
i2u316_40:
	line	1003
	
i2l3788:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	line	1004
	goto	i2l3792
	line	1005
	
i2l376:; BSR set to: 0

	line	1008
	
i2l3790:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	goto	i2l3792
	line	1009
	
i2l377:; BSR set to: 0

	line	1013
	
i2l3792:; BSR set to: 0

	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	iorwf ((c:i2USBTransferOnePacket@handle)),c,w

	btfss	status,2
	goto	i2u317_41
	goto	i2u317_40
i2u317_41:
	goto	i2l3798
i2u317_40:
	line	1015
	
i2l3794:; BSR set to: 0

		movlw	high(0)
	movwf	((c:?i2_USBTransferOnePacket+1)),c
	movlw	low(0)
	movwf	((c:?i2_USBTransferOnePacket)),c

	goto	i2l379
	
i2l3796:; BSR set to: 0

	goto	i2l379
	line	1016
	
i2l378:; BSR set to: 0

	line	1029
	
i2l3798:; BSR set to: 0

	lfsr	2,02h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@data),postinc2
	movff	(c:i2USBTransferOnePacket@data+1),postdec2
	line	1030
	lfsr	2,01h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@len),indf2

	line	1031
	
i2l3800:; BSR set to: 0

	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1032
	
i2l3802:; BSR set to: 0

	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1033
	
i2l3804:; BSR set to: 0

	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1036
	
i2l3806:; BSR set to: 0

	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u318_41
	goto	i2u318_40
i2u318_41:
	goto	i2l3810
i2u318_40:
	line	1039
	
i2l3808:; BSR set to: 0

	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1040
	goto	i2l3812
	line	1041
	
i2l380:; BSR set to: 0

	line	1044
	
i2l3810:; BSR set to: 0

	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	i2l3812
	line	1045
	
i2l381:; BSR set to: 0

	line	1046
	
i2l3812:; BSR set to: 0

		movff	(c:i2USBTransferOnePacket@handle+1),(c:?i2_USBTransferOnePacket+1)
	movff	(c:i2USBTransferOnePacket@handle),(c:?i2_USBTransferOnePacket)

	goto	i2l379
	
i2l3814:; BSR set to: 0

	line	1047
	
i2l379:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_ofi2_USBTransferOnePacket
	__end_ofi2_USBTransferOnePacket:
	signat	i2_USBTransferOnePacket,90
	global	_USBEnableEndpoint

;; *************** function _USBEnableEndpoint *****************
;; Defined at:
;;		line 878 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  options         1   25[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   30[COMRAM] unsigned char 
;;  p               2   28[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBConfigureEndpoint
;; This function is called by:
;;		_APP_CustomHIDInitialize
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	line	878
global __ptext36
__ptext36:
psect	text36
	file	"../src/usb/src/usb_device.c"
	line	878
	global	__size_of_USBEnableEndpoint
	__size_of_USBEnableEndpoint	equ	__end_of_USBEnableEndpoint-_USBEnableEndpoint
	
_USBEnableEndpoint:; BSR set to: 0

;incstack = 0
	opt	stack 21
	movwf	((c:USBEnableEndpoint@ep)),c
	line	884
	
i2l3774:
	
	btfss	((c:USBEnableEndpoint@options)),c,(2)&7
	goto	i2u314_41
	goto	i2u314_40
i2u314_41:
	goto	i2l3778
i2u314_40:
	line	886
	
i2l3776:
	movlw	low(0)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l3778
	line	887
	
i2l371:
	line	888
	
i2l3778:
	
	btfss	((c:USBEnableEndpoint@options)),c,(1)&7
	goto	i2u315_41
	goto	i2u315_40
i2u315_41:
	goto	i2l3782
i2u315_40:
	line	890
	
i2l3780:
	movlw	low(01h)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l3782
	line	891
	
i2l372:
	line	899
	
i2l3782:
	movf	((c:USBEnableEndpoint@ep)),c,w
	mullw	01h
	movlw	low((c:3952))	;volatile
	movwf	(??_USBEnableEndpoint+0+0)&0ffh,c
	movlw	high((c:3952))	;volatile
	movwf	(??_USBEnableEndpoint+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBEnableEndpoint+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBEnableEndpoint+0+1),c
	movff	??_USBEnableEndpoint+0+0,(c:USBEnableEndpoint@p)
	movff	??_USBEnableEndpoint+0+1,(c:USBEnableEndpoint@p+1)
	line	901
	
i2l3784:
	movff	(c:USBEnableEndpoint@p),fsr2l
	movff	(c:USBEnableEndpoint@p+1),fsr2h
	movff	(c:USBEnableEndpoint@options),indf2

	line	902
	
i2l373:
	return
	opt stack 0
GLOBAL	__end_of_USBEnableEndpoint
	__end_of_USBEnableEndpoint:
	signat	_USBEnableEndpoint,8312
	global	_USBConfigureEndpoint

;; *************** function _USBConfigureEndpoint *****************
;; Defined at:
;;		line 1543 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  EPNum           1    wreg     unsigned char 
;;  direction       1   17[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EPNum           1   22[COMRAM] unsigned char 
;;  handle          2   23[COMRAM] PTR volatile struct __BD
;;		 -> BDT(32), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBEnableEndpoint
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	line	1543
global __ptext37
__ptext37:
psect	text37
	file	"../src/usb/src/usb_device.c"
	line	1543
	global	__size_of_USBConfigureEndpoint
	__size_of_USBConfigureEndpoint	equ	__end_of_USBConfigureEndpoint-_USBConfigureEndpoint
	
_USBConfigureEndpoint:
;incstack = 0
	opt	stack 21
	movwf	((c:USBConfigureEndpoint@EPNum)),c
	line	1549
	
i2l3758:
	movlb	4	; () banked
		movlw	high(1024)	;volatile
	movwf	((c:USBConfigureEndpoint@handle+1)),c
	movlb	4	; () banked
	movlw	low(1024)	;volatile
	movwf	((c:USBConfigureEndpoint@handle)),c

	line	1550
	
i2l3760:; BSR set to: 4

	movf	((c:USBConfigureEndpoint@direction)),c,w
	movwf	(??_USBConfigureEndpoint+0+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+0+0),c,f
	rlcf	(??_USBConfigureEndpoint+0+1),c,f
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	movwf	(??_USBConfigureEndpoint+2+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+2+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+0+0),c,w
	addwf	(??_USBConfigureEndpoint+2+0),c
	movf	(??_USBConfigureEndpoint+0+1),c,w
	addwfc	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+2+0),c,w
	addwf	((c:USBConfigureEndpoint@handle)),c
	movf	(??_USBConfigureEndpoint+2+1),c,w
	addwfc	((c:USBConfigureEndpoint@handle+1)),c

	line	1552
	
i2l3762:; BSR set to: 4

	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	indf2,7
	line	1557
	
i2l3764:; BSR set to: 4

	tstfsz	((c:USBConfigureEndpoint@direction)),c
	goto	i2u313_41
	goto	i2u313_40
i2u313_41:
	goto	i2l3768
i2u313_40:
	line	1559
	
i2l3766:; BSR set to: 4

	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	line	1560
	goto	i2l3770
	line	1561
	
i2l418:; BSR set to: 0

	line	1563
	
i2l3768:
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	goto	i2l3770
	line	1564
	
i2l419:; BSR set to: 0

	line	1567
	
i2l3770:; BSR set to: 0

	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	indf2,6
	line	1568
	
i2l3772:; BSR set to: 0

	lfsr	2,04h
	movf	((c:USBConfigureEndpoint@handle)),c,w
	addwf	fsr2l
	movf	((c:USBConfigureEndpoint@handle+1)),c,w
	addwfc	fsr2h
	bsf	indf2,6
	line	1585
	
i2l420:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBConfigureEndpoint
	__end_of_USBConfigureEndpoint:
	signat	_USBConfigureEndpoint,8312
	global	_USBCtrlTrfOutHandler

;; *************** function _USBCtrlTrfOutHandler *****************
;; Defined at:
;;		line 2541 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlTrfRxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	line	2541
global __ptext38
__ptext38:
psect	text38
	file	"../src/usb/src/usb_device.c"
	line	2541
	global	__size_of_USBCtrlTrfOutHandler
	__size_of_USBCtrlTrfOutHandler	equ	__end_of_USBCtrlTrfOutHandler-_USBCtrlTrfOutHandler
	
_USBCtrlTrfOutHandler:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	2543
	
i2l4356:
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u384_41
	goto	i2u384_40
i2u384_41:
	goto	i2l4360
i2u384_40:
	line	2545
	
i2l4358:
	call	_USBCtrlTrfRxService	;wreg free
	line	2546
	goto	i2l530
	line	2547
	
i2l526:
	line	2551
	
i2l4360:
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2558
	
i2l4362:
	tstfsz	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2u385_41
	goto	i2u385_40
i2u385_41:
	goto	i2l4370
i2u385_40:
	line	2560
	
i2l4364:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2561
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	2562
	
i2l4366:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2563
	
i2l4368:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2564
	goto	i2l530
	line	2565
	
i2l528:
	line	2567
	
i2l4370:
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2l530
	line	2568
	
i2l529:
	goto	i2l530
	line	2569
	
i2l527:
	line	2570
	
i2l530:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfOutHandler
	__end_of_USBCtrlTrfOutHandler:
	signat	_USBCtrlTrfOutHandler,88
	global	_USBCtrlTrfRxService

;; *************** function _USBCtrlTrfRxService *****************
;; Defined at:
;;		line 1852 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToRead      1   18[COMRAM] unsigned char 
;;  i               1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfOutHandler
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	line	1852
global __ptext39
__ptext39:
psect	text39
	file	"../src/usb/src/usb_device.c"
	line	1852
	global	__size_of_USBCtrlTrfRxService
	__size_of_USBCtrlTrfRxService	equ	__end_of_USBCtrlTrfRxService-_USBCtrlTrfRxService
	
_USBCtrlTrfRxService:
;incstack = 0
	opt	stack 21
	line	1859
	
i2l4250:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:USBCtrlTrfRxService@byteToRead)),c
	line	1865
	
i2l4252:
	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_outPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_outPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u378_41
	goto	i2u378_40
i2u378_41:
	goto	i2l4256
i2u378_40:
	line	1867
	
i2l4254:; BSR set to: 0

	movff	0+(_outPipes+04h),(c:USBCtrlTrfRxService@byteToRead)	;volatile
	goto	i2l4256
	line	1868
	
i2l451:; BSR set to: 0

	line	1870
	
i2l4256:; BSR set to: 0

	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_outPipes+04h))&0ffh	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_outPipes+04h))&0ffh	;volatile
	line	1874
	
i2l4258:; BSR set to: 0

	movlw	low(0)
	movwf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l4266
	line	1875
	
i2l453:; BSR set to: 0

	line	1876
	
i2l4260:; BSR set to: 0

	movf	((c:USBCtrlTrfRxService@i)),c,w
	mullw	01h
	movlb	4	; () banked
	movlw	low(1064)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	4	; () banked
	movlw	high(1064)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(_outPipes),fsr1l	;volatile
	movff	(_outPipes+1),fsr1h	;volatile
	movff	indf2,indf1
	
i2l4262:; BSR set to: 4

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_outPipes))&0ffh	;volatile
	incf	((_outPipes+1))&0ffh	;volatile
	line	1874
	
i2l4264:; BSR set to: 0

	incf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l4266
	
i2l452:; BSR set to: 0

	
i2l4266:; BSR set to: 0

	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	subwf	((c:USBCtrlTrfRxService@i)),c,w
	btfss	status,0
	goto	i2u379_41
	goto	i2u379_40
i2u379_41:
	goto	i2l4260
i2u379_40:
	goto	i2l4268
	
i2l454:; BSR set to: 0

	line	1881
	
i2l4268:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_outPipes+04h))&0ffh,w	;volatile
	iorwf (0+(_outPipes+04h))&0ffh,w	;volatile

	btfsc	status,2
	goto	i2u380_41
	goto	i2u380_40
i2u380_41:
	goto	i2l4282
i2u380_40:
	line	1883
	
i2l4270:; BSR set to: 0

	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1884
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1885
	
i2l4272:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	btfsc	indf2,6
	goto	i2u381_41
	goto	i2u381_40
i2u381_41:
	goto	i2l4278
i2u381_40:
	line	1887
	
i2l4274:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1888
	
i2l4276:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1889
	goto	i2l461
	line	1890
	
i2l456:; BSR set to: 0

	line	1892
	
i2l4278:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1893
	
i2l4280:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l461
	line	1894
	
i2l457:; BSR set to: 0

	line	1895
	goto	i2l461
	line	1896
	
i2l455:; BSR set to: 0

	line	1901
	
i2l4282:; BSR set to: 0

	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1902
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1906
	
i2l4284:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1907
	
i2l4286:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1914
	
i2l4288:; BSR set to: 0

	line	1926
	
i2l459:; BSR set to: 0

	line	1927
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	line	1941
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u382_41
	goto	i2u382_40
i2u382_41:
	goto	i2l461
i2u382_40:
	line	1943
	
i2l4290:; BSR set to: 0

	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l461
	line	1944
	
i2l460:
	goto	i2l461
	line	1945
	
i2l458:
	line	1947
	
i2l461:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfRxService
	__end_of_USBCtrlTrfRxService:
	signat	_USBCtrlTrfRxService,88
	global	_USBCtrlEPAllowStatusStage

;; *************** function _USBCtrlEPAllowStatusStage *****************
;; Defined at:
;;		line 1416 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBCtrlEPServiceComplete
;;		_USBCtrlTrfRxService
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	line	1416
global __ptext40
__ptext40:
psect	text40
	file	"../src/usb/src/usb_device.c"
	line	1416
	global	__size_of_USBCtrlEPAllowStatusStage
	__size_of_USBCtrlEPAllowStatusStage	equ	__end_of_USBCtrlEPAllowStatusStage-_USBCtrlEPAllowStatusStage
	
_USBCtrlEPAllowStatusStage:
;incstack = 0
	opt	stack 21
	line	1423
	
i2l3956:
	tstfsz	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	goto	i2u333_41
	goto	i2u333_40
i2u333_41:
	goto	i2l409
i2u333_40:
	line	1425
	
i2l3958:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1426
	
i2l3960:
	tstfsz	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	goto	i2u334_41
	goto	i2u334_40
i2u334_41:
	goto	i2l409
i2u334_40:
	line	1428
	
i2l3962:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1432
	
i2l3964:
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u335_41
	goto	i2u335_40
i2u335_41:
	goto	i2l3972
i2u335_40:
	line	1434
	
i2l3966:
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1435
	
i2l3968:; BSR set to: 0

	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1436
	
i2l3970:; BSR set to: 0

	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1437
	goto	i2l409
	line	1438
	
i2l406:; BSR set to: 0

	
i2l3972:
	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u336_41
	goto	i2u336_40
i2u336_41:
	goto	i2l409
i2u336_40:
	line	1440
	
i2l3974:
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1445
	
i2l3976:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1446
	
i2l3978:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1447
	
i2l3980:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1448
	
i2l3982:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1449
	
i2l3984:
	movlw	low(01h)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1453
	
i2l3986:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1454
	
i2l3988:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1455
	
i2l3990:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(080h)
	movwf	indf2
	goto	i2l409
	line	1456
	
i2l408:
	goto	i2l409
	line	1457
	
i2l407:
	goto	i2l409
	
i2l405:
	goto	i2l409
	line	1458
	
i2l404:
	line	1459
	
i2l409:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowStatusStage
	__end_of_USBCtrlEPAllowStatusStage:
	signat	_USBCtrlEPAllowStatusStage,88
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 2595 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lastDTS         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	line	2595
global __ptext41
__ptext41:
psect	text41
	file	"../src/usb/src/usb_device.c"
	line	2595
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	opt	stack 22
	line	2599
	
i2l4372:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0
	btfsc	indf2,6
	movlw	1
	movwf	((c:USBCtrlTrfInHandler@lastDTS)),c
	line	2602
	
i2l4374:
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2607
	
i2l4376:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	8

	btfss	status,2
	goto	i2u386_41
	goto	i2u386_40
i2u386_41:
	goto	i2l4386
i2u386_40:
	line	2609
	
i2l4378:; BSR set to: 0

	movlb	4	; () banked
	movlb	4	; () banked
	movf	(0+(1056+02h))&0ffh,w	;volatile
	andlw	low(07Fh)
	movwf	((c:3950)),c	;volatile
	line	2610
	
i2l4380:; BSR set to: 4

	movf	((c:3950)),c,w	;volatile
	btfsc	status,2
	goto	i2u387_41
	goto	i2u387_40
i2u387_41:
	goto	i2l4384
i2u387_40:
	line	2612
	
i2l4382:; BSR set to: 4

	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2613
	goto	i2l4386
	line	2614
	
i2l534:; BSR set to: 0

	line	2616
	
i2l4384:
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l4386
	line	2617
	
i2l535:; BSR set to: 0

	goto	i2l4386
	line	2618
	
i2l533:; BSR set to: 0

	line	2621
	
i2l4386:; BSR set to: 0

	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u388_41
	goto	i2u388_40
i2u388_41:
	goto	i2l536
i2u388_40:
	line	2623
	
i2l4388:; BSR set to: 0

	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	2624
	
i2l4390:; BSR set to: 0

	call	_USBCtrlTrfTxService	;wreg free
	line	2630
	
i2l4392:
	movf	((c:_shortPacketStatus)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u389_41
	goto	i2u389_40
i2u389_41:
	goto	i2l537
i2u389_40:
	line	2634
	
i2l4394:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	2635
	
i2l4396:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2636
	goto	i2l544
	line	2637
	
i2l537:
	line	2639
	tstfsz	((c:USBCtrlTrfInHandler@lastDTS)),c
	goto	i2u390_41
	goto	i2u390_40
i2u390_41:
	goto	i2l4402
i2u390_40:
	line	2641
	
i2l4398:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	2642
	
i2l4400:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2643
	goto	i2l544
	line	2644
	
i2l539:
	line	2646
	
i2l4402:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2647
	
i2l4404:
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l544
	line	2648
	
i2l540:
	goto	i2l544
	line	2649
	
i2l538:
	line	2650
	goto	i2l544
	line	2651
	
i2l536:; BSR set to: 0

	line	2656
	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u391_41
	goto	i2u391_40
i2u391_41:
	goto	i2l4408
i2u391_40:
	line	2658
	
i2l4406:; BSR set to: 0

	line	2661
	
i2l543:; BSR set to: 0

	line	2662
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2l4408
	line	2663
	
i2l542:; BSR set to: 0

	line	2665
	
i2l4408:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	goto	i2l544
	line	2668
	
i2l541:; BSR set to: 0

	line	2670
	
i2l544:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,88
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1771 in file "../src/usb/src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToSend      1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlTrfInHandler
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	line	1771
global __ptext42
__ptext42:
psect	text42
	file	"../src/usb/src/usb_device.c"
	line	1771
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	opt	stack 20
	line	1777
	
i2l3906:
	movlw	low(08h)
	movwf	((c:USBCtrlTrfTxService@byteToSend)),c
	line	1778
	
i2l3908:
	movlw	08h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_inPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_inPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u324_41
	goto	i2u324_40
i2u324_41:
	goto	i2l3918
i2u324_40:
	line	1780
	
i2l3910:; BSR set to: 0

	movff	0+(_inPipes+04h),(c:USBCtrlTrfTxService@byteToSend)	;volatile
	line	1787
	tstfsz	((c:_shortPacketStatus)),c	;volatile
	goto	i2u325_41
	goto	i2u325_40
i2u325_41:
	goto	i2l3914
i2u325_40:
	line	1789
	
i2l3912:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	1790
	goto	i2l3918
	line	1791
	
i2l437:; BSR set to: 0

	
i2l3914:; BSR set to: 0

	decf	((c:_shortPacketStatus)),c,w	;volatile

	btfss	status,2
	goto	i2u326_41
	goto	i2u326_40
i2u326_41:
	goto	i2l3918
i2u326_40:
	line	1793
	
i2l3916:; BSR set to: 0

	movlw	low(02h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	goto	i2l3918
	line	1794
	
i2l439:; BSR set to: 0

	goto	i2l3918
	line	1795
	
i2l438:; BSR set to: 0

	goto	i2l3918
	
i2l436:; BSR set to: 0

	line	1799
	
i2l3918:; BSR set to: 0

	movf	((c:USBCtrlTrfTxService@byteToSend)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_inPipes+04h))&0ffh	;volatile
	line	1804
	
i2l3920:; BSR set to: 0

	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movff	(c:USBCtrlTrfTxService@byteToSend),indf2

	line	1808
	
i2l3922:; BSR set to: 0

	movlb	4	; () banked
		movlw	high(1064)	;volatile
	movwf	((c:_pDst+1)),c
	movlb	4	; () banked
	movlw	low(1064)	;volatile
	movwf	((c:_pDst)),c

	line	1809
	
i2l3924:; BSR set to: 4

	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,0	;volatile
	goto	i2u327_41
	goto	i2u327_40
i2u327_41:
	goto	i2l3946
i2u327_40:
	goto	i2l3936
	line	1811
	
i2l3926:; BSR set to: 0

	goto	i2l3936
	
i2l442:; BSR set to: 0

	line	1813
	
i2l3928:; BSR set to: 0

	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u328_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u328_40
i2u328_47:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
i2u328_40:
	movwf	indf2
	
i2l3930:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_inPipes))&0ffh	;volatile
	incf	((_inPipes+1))&0ffh	;volatile
	
i2l3932:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1814
	
i2l3934:; BSR set to: 0

	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l3936
	line	1815
	
i2l441:; BSR set to: 0

	line	1811
	
i2l3936:; BSR set to: 0

	tstfsz	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2u329_41
	goto	i2u329_40
i2u329_41:
	goto	i2l3928
i2u329_40:
	goto	i2l448
	
i2l443:; BSR set to: 0

	line	1816
	goto	i2l448
	line	1817
	
i2l440:; BSR set to: 0

	line	1819
	goto	i2l3946
	
i2l446:; BSR set to: 0

	line	1821
	
i2l3938:; BSR set to: 0

	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u330_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u330_40
i2u330_47:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
i2u330_40:
	movwf	indf2
	
i2l3940:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_inPipes))&0ffh	;volatile
	incf	((_inPipes+1))&0ffh	;volatile
	
i2l3942:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1822
	
i2l3944:; BSR set to: 0

	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l3946
	line	1823
	
i2l445:; BSR set to: 0

	line	1819
	
i2l3946:; BSR set to: 0

	tstfsz	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2u331_41
	goto	i2u331_40
i2u331_41:
	goto	i2l3938
i2u331_40:
	goto	i2l448
	
i2l447:; BSR set to: 0

	goto	i2l448
	line	1824
	
i2l444:; BSR set to: 0

	line	1825
	
i2l448:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
