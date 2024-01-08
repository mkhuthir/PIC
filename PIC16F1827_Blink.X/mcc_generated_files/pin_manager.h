/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.1
        Device            :  PIC16F1827
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.40

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


#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set channel_AN0 aliases
#define channel_AN0_TRIS               TRISAbits.TRISA0
#define channel_AN0_LAT                LATAbits.LATA0
#define channel_AN0_PORT               PORTAbits.RA0
#define channel_AN0_ANS                ANSELAbits.ANSA0
#define channel_AN0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define channel_AN0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define channel_AN0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define channel_AN0_GetValue()           PORTAbits.RA0
#define channel_AN0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define channel_AN0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define channel_AN0_SetAnalogMode()  do { ANSELAbits.ANSA0 = 1; } while(0)
#define channel_AN0_SetDigitalMode() do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set SW1 aliases
#define SW1_TRIS               TRISAbits.TRISA5
#define SW1_PORT               PORTAbits.RA5
#define SW1_WPU                WPUAbits.WPUA5
#define SW1_GetValue()           PORTAbits.RA5
#define SW1_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define SW1_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define SW1_SetPullup()      do { WPUAbits.WPUA5 = 1; } while(0)
#define SW1_ResetPullup()    do { WPUAbits.WPUA5 = 0; } while(0)

// get/set DS1 aliases
#define DS1_TRIS               TRISBbits.TRISB0
#define DS1_LAT                LATBbits.LATB0
#define DS1_PORT               PORTBbits.RB0
#define DS1_WPU                WPUBbits.WPUB0
#define DS1_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define DS1_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define DS1_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define DS1_GetValue()           PORTBbits.RB0
#define DS1_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define DS1_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define DS1_SetPullup()      do { WPUBbits.WPUB0 = 1; } while(0)
#define DS1_ResetPullup()    do { WPUBbits.WPUB0 = 0; } while(0)

// get/set DS2 aliases
#define DS2_TRIS               TRISBbits.TRISB1
#define DS2_LAT                LATBbits.LATB1
#define DS2_PORT               PORTBbits.RB1
#define DS2_WPU                WPUBbits.WPUB1
#define DS2_ANS                ANSELBbits.ANSB1
#define DS2_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define DS2_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define DS2_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define DS2_GetValue()           PORTBbits.RB1
#define DS2_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define DS2_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define DS2_SetPullup()      do { WPUBbits.WPUB1 = 1; } while(0)
#define DS2_ResetPullup()    do { WPUBbits.WPUB1 = 0; } while(0)
#define DS2_SetAnalogMode()  do { ANSELBbits.ANSB1 = 1; } while(0)
#define DS2_SetDigitalMode() do { ANSELBbits.ANSB1 = 0; } while(0)

// get/set DS3 aliases
#define DS3_TRIS               TRISBbits.TRISB2
#define DS3_LAT                LATBbits.LATB2
#define DS3_PORT               PORTBbits.RB2
#define DS3_WPU                WPUBbits.WPUB2
#define DS3_ANS                ANSELBbits.ANSB2
#define DS3_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define DS3_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define DS3_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define DS3_GetValue()           PORTBbits.RB2
#define DS3_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define DS3_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define DS3_SetPullup()      do { WPUBbits.WPUB2 = 1; } while(0)
#define DS3_ResetPullup()    do { WPUBbits.WPUB2 = 0; } while(0)
#define DS3_SetAnalogMode()  do { ANSELBbits.ANSB2 = 1; } while(0)
#define DS3_SetDigitalMode() do { ANSELBbits.ANSB2 = 0; } while(0)

// get/set DS4 aliases
#define DS4_TRIS               TRISBbits.TRISB3
#define DS4_LAT                LATBbits.LATB3
#define DS4_PORT               PORTBbits.RB3
#define DS4_WPU                WPUBbits.WPUB3
#define DS4_ANS                ANSELBbits.ANSB3
#define DS4_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define DS4_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define DS4_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define DS4_GetValue()           PORTBbits.RB3
#define DS4_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define DS4_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define DS4_SetPullup()      do { WPUBbits.WPUB3 = 1; } while(0)
#define DS4_ResetPullup()    do { WPUBbits.WPUB3 = 0; } while(0)
#define DS4_SetAnalogMode()  do { ANSELBbits.ANSB3 = 1; } while(0)
#define DS4_SetDigitalMode() do { ANSELBbits.ANSB3 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/