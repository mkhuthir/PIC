/**
  Blink Lab Source File

  Company:
    Microchip Technology Inc.

  File Name:
    Blink.c

  Summary:
    This is the source file for the Blink lab

  Description:
    This source file contains the code on how the Blink lab works.
    
    The generated drivers are tested against the following:
        Compiler          :  XC8 v1.38
        MPLAB             :  MPLAB X v3.45
        Device            :  PIC16F18875
 */

/*
Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

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

/**
  Section: Included Files
 */

#include "../../mcc_generated_files/pin_manager.h"
#include "../../mcc_generated_files/tmr1.h"
#include "../../labHeader.h"

/*
                             Application    
 */

#define OVERFLOW    3

void Blink(void) {

    static uint8_t counter;

    if (labState != RUNNING) {
        TMR1_StartTimer();

        LED_D2_LAT = LED_D3_LAT = LED_D4_LAT = LED_D5_LAT = OFF;

        labState = RUNNING;
    }

    if (labState == RUNNING) {
        //Wait for Timer1 to overflow
        while (!TMR1IF);

        TMR1_Reload();

        counter++;

        //Wait for overflow for 1.5 secs delay
        if (counter == OVERFLOW) {
            LED_D2_Toggle();
            counter = 0;
        }

        //Clear TMR1 Overflow flag
        TMR1IF = 0;
    }

    //Check if a switch event occurs
    if (switchEvent) {
        TMR1_StopTimer();

        labState = NOT_RUNNING;
    }
}
/**
 End of File
 */
