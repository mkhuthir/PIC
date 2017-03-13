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
        Product Revision  :  MPLAB(c) Code Configurator - 4.15
        Device            :  PIC16F18875
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

// get/set LED_D4 aliases
#define LED_D4_TRIS               TRISAbits.TRISA4
#define LED_D4_LAT                LATAbits.LATA4
#define LED_D4_PORT               PORTAbits.RA4
#define LED_D4_WPU                WPUAbits.WPUA4
#define LED_D4_OD                ODCONAbits.ODCA4
#define LED_D4_ANS                ANSELAbits.ANSA4
#define LED_D4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define LED_D4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define LED_D4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define LED_D4_GetValue()           PORTAbits.RA4
#define LED_D4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define LED_D4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define LED_D4_SetPullup()      do { WPUAbits.WPUA4 = 1; } while(0)
#define LED_D4_ResetPullup()    do { WPUAbits.WPUA4 = 0; } while(0)
#define LED_D4_SetPushPull()    do { ODCONAbits.ODCA4 = 1; } while(0)
#define LED_D4_SetOpenDrain()   do { ODCONAbits.ODCA4 = 0; } while(0)
#define LED_D4_SetAnalogMode()  do { ANSELAbits.ANSA4 = 1; } while(0)
#define LED_D4_SetDigitalMode() do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set LED_D5 aliases
#define LED_D5_TRIS               TRISAbits.TRISA5
#define LED_D5_LAT                LATAbits.LATA5
#define LED_D5_PORT               PORTAbits.RA5
#define LED_D5_WPU                WPUAbits.WPUA5
#define LED_D5_OD                ODCONAbits.ODCA5
#define LED_D5_ANS                ANSELAbits.ANSA5
#define LED_D5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define LED_D5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define LED_D5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define LED_D5_GetValue()           PORTAbits.RA5
#define LED_D5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define LED_D5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define LED_D5_SetPullup()      do { WPUAbits.WPUA5 = 1; } while(0)
#define LED_D5_ResetPullup()    do { WPUAbits.WPUA5 = 0; } while(0)
#define LED_D5_SetPushPull()    do { ODCONAbits.ODCA5 = 1; } while(0)
#define LED_D5_SetOpenDrain()   do { ODCONAbits.ODCA5 = 0; } while(0)
#define LED_D5_SetAnalogMode()  do { ANSELAbits.ANSA5 = 1; } while(0)
#define LED_D5_SetDigitalMode() do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set LED_D6 aliases
#define LED_D6_TRIS               TRISAbits.TRISA6
#define LED_D6_LAT                LATAbits.LATA6
#define LED_D6_PORT               PORTAbits.RA6
#define LED_D6_WPU                WPUAbits.WPUA6
#define LED_D6_OD                ODCONAbits.ODCA6
#define LED_D6_ANS                ANSELAbits.ANSA6
#define LED_D6_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define LED_D6_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define LED_D6_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define LED_D6_GetValue()           PORTAbits.RA6
#define LED_D6_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define LED_D6_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define LED_D6_SetPullup()      do { WPUAbits.WPUA6 = 1; } while(0)
#define LED_D6_ResetPullup()    do { WPUAbits.WPUA6 = 0; } while(0)
#define LED_D6_SetPushPull()    do { ODCONAbits.ODCA6 = 1; } while(0)
#define LED_D6_SetOpenDrain()   do { ODCONAbits.ODCA6 = 0; } while(0)
#define LED_D6_SetAnalogMode()  do { ANSELAbits.ANSA6 = 1; } while(0)
#define LED_D6_SetDigitalMode() do { ANSELAbits.ANSA6 = 0; } while(0)

// get/set LED_D7 aliases
#define LED_D7_TRIS               TRISAbits.TRISA7
#define LED_D7_LAT                LATAbits.LATA7
#define LED_D7_PORT               PORTAbits.RA7
#define LED_D7_WPU                WPUAbits.WPUA7
#define LED_D7_OD                ODCONAbits.ODCA7
#define LED_D7_ANS                ANSELAbits.ANSA7
#define LED_D7_SetHigh()            do { LATAbits.LATA7 = 1; } while(0)
#define LED_D7_SetLow()             do { LATAbits.LATA7 = 0; } while(0)
#define LED_D7_Toggle()             do { LATAbits.LATA7 = ~LATAbits.LATA7; } while(0)
#define LED_D7_GetValue()           PORTAbits.RA7
#define LED_D7_SetDigitalInput()    do { TRISAbits.TRISA7 = 1; } while(0)
#define LED_D7_SetDigitalOutput()   do { TRISAbits.TRISA7 = 0; } while(0)
#define LED_D7_SetPullup()      do { WPUAbits.WPUA7 = 1; } while(0)
#define LED_D7_ResetPullup()    do { WPUAbits.WPUA7 = 0; } while(0)
#define LED_D7_SetPushPull()    do { ODCONAbits.ODCA7 = 1; } while(0)
#define LED_D7_SetOpenDrain()   do { ODCONAbits.ODCA7 = 0; } while(0)
#define LED_D7_SetAnalogMode()  do { ANSELAbits.ANSA7 = 1; } while(0)
#define LED_D7_SetDigitalMode() do { ANSELAbits.ANSA7 = 0; } while(0)

// get/set RC0 procedures
#define RC0_SetHigh()    do { LATCbits.LATC0 = 1; } while(0)
#define RC0_SetLow()   do { LATCbits.LATC0 = 0; } while(0)
#define RC0_Toggle()   do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define RC0_GetValue()         PORTCbits.RC0
#define RC0_SetDigitalInput()   do { TRISCbits.TRISC0 = 1; } while(0)
#define RC0_SetDigitalOutput()  do { TRISCbits.TRISC0 = 0; } while(0)
#define RC0_SetPullup()     do { WPUCbits.WPUC0 = 1; } while(0)
#define RC0_ResetPullup()   do { WPUCbits.WPUC0 = 0; } while(0)
#define RC0_SetAnalogMode() do { ANSELCbits.ANSC0 = 1; } while(0)
#define RC0_SetDigitalMode()do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set RC1 procedures
#define RC1_SetHigh()    do { LATCbits.LATC1 = 1; } while(0)
#define RC1_SetLow()   do { LATCbits.LATC1 = 0; } while(0)
#define RC1_Toggle()   do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define RC1_GetValue()         PORTCbits.RC1
#define RC1_SetDigitalInput()   do { TRISCbits.TRISC1 = 1; } while(0)
#define RC1_SetDigitalOutput()  do { TRISCbits.TRISC1 = 0; } while(0)
#define RC1_SetPullup()     do { WPUCbits.WPUC1 = 1; } while(0)
#define RC1_ResetPullup()   do { WPUCbits.WPUC1 = 0; } while(0)
#define RC1_SetAnalogMode() do { ANSELCbits.ANSC1 = 1; } while(0)
#define RC1_SetDigitalMode()do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set RC3 procedures
#define RC3_SetHigh()    do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()   do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()   do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()         PORTCbits.RC3
#define RC3_SetDigitalInput()   do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()  do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()     do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()   do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode() do { ANSELCbits.ANSC3 = 1; } while(0)
#define RC3_SetDigitalMode()do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set RC4 procedures
#define RC4_SetHigh()    do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()   do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()   do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()         PORTCbits.RC4
#define RC4_SetDigitalInput()   do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()  do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetPullup()     do { WPUCbits.WPUC4 = 1; } while(0)
#define RC4_ResetPullup()   do { WPUCbits.WPUC4 = 0; } while(0)
#define RC4_SetAnalogMode() do { ANSELCbits.ANSC4 = 1; } while(0)
#define RC4_SetDigitalMode()do { ANSELCbits.ANSC4 = 0; } while(0)

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