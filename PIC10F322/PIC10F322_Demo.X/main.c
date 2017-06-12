/****************************************************************************
;*	Microchip Technology Inc. 2007                                      *
;*	Assembler version:  XC8 v1.34                                       *
;*	Filename:                                                           *
;*		main.c (main routine)                                       *
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


/*
Copyright (c) 2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*/


#include "device_initialize.h"

uint16_t dutycycle; // define variable - unsigned integer

// Main application
void main(void)
{
    SYSTEM_Initialize();    // Initialize the device

    TRISAbits.TRISA0 = 0;   // Set Channel RA0 as output
    TRISAbits.TRISA1 = 0;   // Set Channel RA1 as output
    LATAbits.LATA1 = 1;     // Set RA0 (LED D1) high

    TMR2_StartTimer();      // Start Timer2 for PWM operation

    while (1)
    {
        // LED D2 Brightness control
        /*multiply duty by 4 in order to scale value for better PWM resolution
          8 bit ADC ouput is scaled to get a better resolution on 10-bit PWM*/
        dutycycle =  (ADC_GetConversion (channel_AN2) * 4); // function call to read value from Potentiometer

        PWM_LoadDutyValue (dutycycle); // call function to write value of "duty" to the PWM duty cycle
    }
}
// End of File
