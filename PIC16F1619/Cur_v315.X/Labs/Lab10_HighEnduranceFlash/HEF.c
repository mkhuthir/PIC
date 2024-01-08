/**
  High Endurance Flash Lab Source File

  Company:
    Microchip Technology Inc.

  File Name:
    HEF.c

  Summary:
    This is the source file for the HEF lab

  Description:
    This source file contains the code on how the HEF lab works.
    
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
#include "../../mcc_generated_files/memory.h"
#include "../../labHeader.h"

/*
                             Application    
 */

static uint8_t errorCheck;
static uint8_t rotateReg;

void HEF(void) {

    if (labState != RUNNING) {
        LED_D4_LAT = LED_D5_LAT = LED_D6_LAT = LED_D7_LAT = OFF;

        labState = RUNNING;
    }

    if (labState == RUNNING) {
        uint16_t writeData = 0x0005;
        uint16_t HefAddr = 0x1FF0;
        uint16_t Buf[ERASE_FLASH_BLOCKSIZE];

        FLASH_WriteWord(HefAddr, Buf, writeData);

        //Read back value and store to LED display
        rotateReg = FLASH_ReadWord(HefAddr);

        //Determine which LED will light up
        //ie. which bit in the register the 1 has rotated to.
        LED_D4_LAT = rotateReg & 1;
        LED_D5_LAT = (rotateReg & 2) >> 1;
        LED_D6_LAT = (rotateReg & 4) >> 2;
        LED_D7_LAT = (rotateReg & 8) >> 3;
    }

    //Check if a switch event occurs
    if (switchEvent) {
        labState = NOT_RUNNING;
    }
}
/**
 End of File
 */