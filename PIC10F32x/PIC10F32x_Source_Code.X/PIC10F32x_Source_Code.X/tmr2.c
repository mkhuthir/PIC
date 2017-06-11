/****************************************************************************
;*	Microchip Technology Inc. 2007                                      *
;*	Assembler version:  XC8 v1.34                                       *
;*	Filename:                                                           *
;*		tmr2.c                                                      *
;*	Dependents:                                                         *
;*                                                                          *
;*	April 13, 2015                                                      *
;*      PIC10(L)32X Developmental Board                                     *
;*      Demonstration program:                                              *
;*          After applying power to the PIC10(L)F32X Development Board,     *
;*          LED (D1) will automatically turn on.  Turn POT1 clockwise       *
;*          to increase the brightness of LED (D2).  Press switch (SW1)     *
;*          to turn both LEDs D1 and D2 off, release switch (SW1) and       *
;*          LEDs D1 and D2 will turn on.                                    *
;*                                                                          *
;****************************************************************************/

// Section: Included Files

#include <xc.h>
#include "tmr2.h"

void TMR2_Initialize(void)
{
    // TMR2ON off; T2CKPS 1:1; T2OUTPS 1:1;
    T2CON = 0x00;

    // PR2 255;
    PR2 = 0xFF;

    // TMR2 0x00;
    TMR2 = 0x00;

    // Clearing IF flag.
    PIR1bits.TMR2IF = 0;
}

void TMR2_StartTimer(void)
{
    // Start the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 1;
}

// End of File

