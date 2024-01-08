/**
  Timer1 Lab Source File

  Company:
    Microchip Technology Inc.

  File Name:
    Timer1.c

  Summary:
    This is the source file for the Timer1 lab

  Description:
    This source file contains the code on how the Timer1 lab works.
    
    The generated drivers are tested against the following:
        Compiler          :  XC8 v1.38
        MPLAB             :  MPLAB X v3.35
        Device            :  PIC16F1619
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

#define LAST   16

static uint8_t rotateReg;

void Timer1(void) {

    if (labState != RUNNING) {
        LED_D4_LAT = ON;
        LED_D5_LAT = LED_D6_LAT = LED_D7_LAT = OFF;

        //Initialize temporary register to begin at 1
        rotateReg = 1;

        TMR1_StartTimer();

        labState = RUNNING;
    }

    if (labState == RUNNING) {
        //Wait for Timer1 to overflow
        while (!TMR1IF);

        TMR1_Reload();

        rotateReg = rotateReg << 1;

        //Return to initial position of LED
        if (rotateReg == LAST) {
            rotateReg = 1;
        }

        //Determine which LED will light up
        LED_D4_LAT = rotateReg & 1;
        LED_D5_LAT = (rotateReg & 2) >> 1;
        LED_D6_LAT = (rotateReg & 4) >> 2;
        LED_D7_LAT = (rotateReg & 8) >> 3;

        //Clear the TMR1 interrupt flag
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
