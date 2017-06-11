/****************************************************************************
;*	Microchip Technology Inc. 2007                                      *
;*	Assembler version:  XC8 v1.34                                       *
;*	Filename:                                                           *
;*		pwm.c                                                       *
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
#include "pwm.h"

// Section: PWM Module APIs

void PWM_Initialize(void)
{
    // PWM1EN Enabled; PWM1OE Enabled; PWM1POL active_hi
    PWM1CON = 0xc0;
}

void PWM_LoadDutyValue(uint16_t dutyValue)
{
    //2 LSB's of dutyValue
    PWM1DCL = dutyValue << 6;   // Left shift by 6 to write 2 LSB bits of ADRES

    //8 MSB's of dutyValue
    PWM1DCH = dutyValue >> 2;   // Right shift by 2 to write 8 MSB bits of ADRES
}

// End of File


