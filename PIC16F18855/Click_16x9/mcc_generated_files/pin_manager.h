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
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.3
        Device            :  PIC16F18855
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

// get/set LED2 aliases
#define LED2_TRIS               TRISAbits.TRISA0
#define LED2_LAT                LATAbits.LATA0
#define LED2_PORT               PORTAbits.RA0
#define LED2_WPU                WPUAbits.WPUA0
#define LED2_OD                ODCONAbits.ODCA0
#define LED2_ANS                ANSELAbits.ANSA0
#define LED2_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define LED2_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define LED2_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define LED2_GetValue()           PORTAbits.RA0
#define LED2_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define LED2_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define LED2_SetPullup()      do { WPUAbits.WPUA0 = 1; } while(0)
#define LED2_ResetPullup()    do { WPUAbits.WPUA0 = 0; } while(0)
#define LED2_SetPushPull()    do { ODCONAbits.ODCA0 = 1; } while(0)
#define LED2_SetOpenDrain()   do { ODCONAbits.ODCA0 = 0; } while(0)
#define LED2_SetAnalogMode()  do { ANSELAbits.ANSA0 = 1; } while(0)
#define LED2_SetDigitalMode() do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set LED3 aliases
#define LED3_TRIS               TRISAbits.TRISA1
#define LED3_LAT                LATAbits.LATA1
#define LED3_PORT               PORTAbits.RA1
#define LED3_WPU                WPUAbits.WPUA1
#define LED3_OD                ODCONAbits.ODCA1
#define LED3_ANS                ANSELAbits.ANSA1
#define LED3_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define LED3_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define LED3_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define LED3_GetValue()           PORTAbits.RA1
#define LED3_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define LED3_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define LED3_SetPullup()      do { WPUAbits.WPUA1 = 1; } while(0)
#define LED3_ResetPullup()    do { WPUAbits.WPUA1 = 0; } while(0)
#define LED3_SetPushPull()    do { ODCONAbits.ODCA1 = 1; } while(0)
#define LED3_SetOpenDrain()   do { ODCONAbits.ODCA1 = 0; } while(0)
#define LED3_SetAnalogMode()  do { ANSELAbits.ANSA1 = 1; } while(0)
#define LED3_SetDigitalMode() do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set LED4 aliases
#define LED4_TRIS               TRISAbits.TRISA2
#define LED4_LAT                LATAbits.LATA2
#define LED4_PORT               PORTAbits.RA2
#define LED4_WPU                WPUAbits.WPUA2
#define LED4_OD                ODCONAbits.ODCA2
#define LED4_ANS                ANSELAbits.ANSA2
#define LED4_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define LED4_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define LED4_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define LED4_GetValue()           PORTAbits.RA2
#define LED4_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define LED4_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define LED4_SetPullup()      do { WPUAbits.WPUA2 = 1; } while(0)
#define LED4_ResetPullup()    do { WPUAbits.WPUA2 = 0; } while(0)
#define LED4_SetPushPull()    do { ODCONAbits.ODCA2 = 1; } while(0)
#define LED4_SetOpenDrain()   do { ODCONAbits.ODCA2 = 0; } while(0)
#define LED4_SetAnalogMode()  do { ANSELAbits.ANSA2 = 1; } while(0)
#define LED4_SetDigitalMode() do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set LED5 aliases
#define LED5_TRIS               TRISAbits.TRISA3
#define LED5_LAT                LATAbits.LATA3
#define LED5_PORT               PORTAbits.RA3
#define LED5_WPU                WPUAbits.WPUA3
#define LED5_OD                ODCONAbits.ODCA3
#define LED5_ANS                ANSELAbits.ANSA3
#define LED5_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define LED5_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define LED5_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define LED5_GetValue()           PORTAbits.RA3
#define LED5_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define LED5_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define LED5_SetPullup()      do { WPUAbits.WPUA3 = 1; } while(0)
#define LED5_ResetPullup()    do { WPUAbits.WPUA3 = 0; } while(0)
#define LED5_SetPushPull()    do { ODCONAbits.ODCA3 = 1; } while(0)
#define LED5_SetOpenDrain()   do { ODCONAbits.ODCA3 = 0; } while(0)
#define LED5_SetAnalogMode()  do { ANSELAbits.ANSA3 = 1; } while(0)
#define LED5_SetDigitalMode() do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set S2 aliases
#define S2_TRIS               TRISAbits.TRISA5
#define S2_LAT                LATAbits.LATA5
#define S2_PORT               PORTAbits.RA5
#define S2_WPU                WPUAbits.WPUA5
#define S2_OD                ODCONAbits.ODCA5
#define S2_ANS                ANSELAbits.ANSA5
#define S2_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define S2_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define S2_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define S2_GetValue()           PORTAbits.RA5
#define S2_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define S2_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define S2_SetPullup()      do { WPUAbits.WPUA5 = 1; } while(0)
#define S2_ResetPullup()    do { WPUAbits.WPUA5 = 0; } while(0)
#define S2_SetPushPull()    do { ODCONAbits.ODCA5 = 1; } while(0)
#define S2_SetOpenDrain()   do { ODCONAbits.ODCA5 = 0; } while(0)
#define S2_SetAnalogMode()  do { ANSELAbits.ANSA5 = 1; } while(0)
#define S2_SetDigitalMode() do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set SDB aliases
#define SDB_TRIS               TRISBbits.TRISB2
#define SDB_LAT                LATBbits.LATB2
#define SDB_PORT               PORTBbits.RB2
#define SDB_WPU                WPUBbits.WPUB2
#define SDB_OD                ODCONBbits.ODCB2
#define SDB_ANS                ANSELBbits.ANSB2
#define SDB_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define SDB_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define SDB_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define SDB_GetValue()           PORTBbits.RB2
#define SDB_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define SDB_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define SDB_SetPullup()      do { WPUBbits.WPUB2 = 1; } while(0)
#define SDB_ResetPullup()    do { WPUBbits.WPUB2 = 0; } while(0)
#define SDB_SetPushPull()    do { ODCONBbits.ODCB2 = 1; } while(0)
#define SDB_SetOpenDrain()   do { ODCONBbits.ODCB2 = 0; } while(0)
#define SDB_SetAnalogMode()  do { ANSELBbits.ANSB2 = 1; } while(0)
#define SDB_SetDigitalMode() do { ANSELBbits.ANSB2 = 0; } while(0)

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