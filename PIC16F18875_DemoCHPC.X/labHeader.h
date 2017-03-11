/**
  Lab Header File

  @Company
    Microchip Technology Inc.

  @File Name
    labHeader.h

  @Summary
    This is the header file for the variables declarations and function prototypes

  @Description
    This header file provides all the variables and function prototypes used for managing the lab states
    
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


#ifndef LABHEADER_H
#define	LABHEADER_H

#include <xc.h>
#include <stdint.h>


#define _XTAL_FREQ          500000
#define LOW                 0
#define HIGH                1
#define PRESSED             1
#define NOT_PRESSED         0
#define RUNNING             1
#define NOT_RUNNING         0
#define OFF                 0
#define ON                  1

extern uint8_t labNumber;
extern uint8_t switchEvent;
extern uint8_t labState;
extern uint8_t btnState;

void HelloWorld(void);
void Blink(void);
void Rotate(void);
void ADC(void);
void VSR(void);
void PWM(void);
void Timer1(void);
void Interrupt(void);
void SleepWakeUp(void);
void EEPROM(void);


void Delay500ms(void);


#endif	/* LABHEADER_H */

