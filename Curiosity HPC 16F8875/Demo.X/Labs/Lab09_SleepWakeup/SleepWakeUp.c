/**
  Sleep Wakeup Lab Source File

  Company:
    Microchip Technology Inc.

  File Name:
    SleepWakeUp.c

  Summary:
    This is the source file for the Sleep Wakeup lab

  Description:
    This source file contains the code on how the Sleep Wakeup lab works.
    
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

#include "../../mcc_generated_files/mcc.h"
#include "../../mcc_generated_files/pin_manager.h"
#include "../../labHeader.h"

void SleepWakeUp(void) {

    if (labState != RUNNING) {
        LED_D2_LAT = LED_D4_LAT = ON;
        LED_D3_LAT = LED_D5_LAT = OFF;

        //Enable Watchdog Timer
        WWDT_SoftEnable();

        SLEEP();

        labState = RUNNING;
    }

    if (labState == RUNNING) {
        //Wait 4 seconds for the WDT time out
        //and reverse the states of the LEDs
        LED_D2_LAT = LED_D4_LAT = OFF;
        LED_D3_LAT = LED_D5_LAT = ON;

        //Disable Watchdog Timer
        if (!WWDT_TimeOutStatusGet()) {
            WWDT_SoftDisable();
        }
    }

    //Check if a switch event occurs
    if (switchEvent) {
        labState = NOT_RUNNING;
    }
}
/**
 End of File
 */