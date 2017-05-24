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

// get/set FLASH2_nCS aliases
#define FLASH2_nCS_TRIS               TRISAbits.TRISA3
#define FLASH2_nCS_LAT                LATAbits.LATA3
#define FLASH2_nCS_PORT               PORTAbits.RA3
#define FLASH2_nCS_WPU                WPUAbits.WPUA3
#define FLASH2_nCS_OD                ODCONAbits.ODCA3
#define FLASH2_nCS_ANS                ANSELAbits.ANSA3
#define FLASH2_nCS_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define FLASH2_nCS_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define FLASH2_nCS_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define FLASH2_nCS_GetValue()           PORTAbits.RA3
#define FLASH2_nCS_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define FLASH2_nCS_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define FLASH2_nCS_SetPullup()      do { WPUAbits.WPUA3 = 1; } while(0)
#define FLASH2_nCS_ResetPullup()    do { WPUAbits.WPUA3 = 0; } while(0)
#define FLASH2_nCS_SetPushPull()    do { ODCONAbits.ODCA3 = 1; } while(0)
#define FLASH2_nCS_SetOpenDrain()   do { ODCONAbits.ODCA3 = 0; } while(0)
#define FLASH2_nCS_SetAnalogMode()  do { ANSELAbits.ANSA3 = 1; } while(0)
#define FLASH2_nCS_SetDigitalMode() do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set IO_RA4 aliases
#define IO_RA4_TRIS               TRISAbits.TRISA4
#define IO_RA4_LAT                LATAbits.LATA4
#define IO_RA4_PORT               PORTAbits.RA4
#define IO_RA4_WPU                WPUAbits.WPUA4
#define IO_RA4_OD                ODCONAbits.ODCA4
#define IO_RA4_ANS                ANSELAbits.ANSA4
#define IO_RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define IO_RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define IO_RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define IO_RA4_GetValue()           PORTAbits.RA4
#define IO_RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define IO_RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define IO_RA4_SetPullup()      do { WPUAbits.WPUA4 = 1; } while(0)
#define IO_RA4_ResetPullup()    do { WPUAbits.WPUA4 = 0; } while(0)
#define IO_RA4_SetPushPull()    do { ODCONAbits.ODCA4 = 1; } while(0)
#define IO_RA4_SetOpenDrain()   do { ODCONAbits.ODCA4 = 0; } while(0)
#define IO_RA4_SetAnalogMode()  do { ANSELAbits.ANSA4 = 1; } while(0)
#define IO_RA4_SetDigitalMode() do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set IO_RA5 aliases
#define IO_RA5_TRIS               TRISAbits.TRISA5
#define IO_RA5_LAT                LATAbits.LATA5
#define IO_RA5_PORT               PORTAbits.RA5
#define IO_RA5_WPU                WPUAbits.WPUA5
#define IO_RA5_OD                ODCONAbits.ODCA5
#define IO_RA5_ANS                ANSELAbits.ANSA5
#define IO_RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define IO_RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define IO_RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define IO_RA5_GetValue()           PORTAbits.RA5
#define IO_RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define IO_RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define IO_RA5_SetPullup()      do { WPUAbits.WPUA5 = 1; } while(0)
#define IO_RA5_ResetPullup()    do { WPUAbits.WPUA5 = 0; } while(0)
#define IO_RA5_SetPushPull()    do { ODCONAbits.ODCA5 = 1; } while(0)
#define IO_RA5_SetOpenDrain()   do { ODCONAbits.ODCA5 = 0; } while(0)
#define IO_RA5_SetAnalogMode()  do { ANSELAbits.ANSA5 = 1; } while(0)
#define IO_RA5_SetDigitalMode() do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set IO_RA6 aliases
#define IO_RA6_TRIS               TRISAbits.TRISA6
#define IO_RA6_LAT                LATAbits.LATA6
#define IO_RA6_PORT               PORTAbits.RA6
#define IO_RA6_WPU                WPUAbits.WPUA6
#define IO_RA6_OD                ODCONAbits.ODCA6
#define IO_RA6_ANS                ANSELAbits.ANSA6
#define IO_RA6_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define IO_RA6_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define IO_RA6_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define IO_RA6_GetValue()           PORTAbits.RA6
#define IO_RA6_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define IO_RA6_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define IO_RA6_SetPullup()      do { WPUAbits.WPUA6 = 1; } while(0)
#define IO_RA6_ResetPullup()    do { WPUAbits.WPUA6 = 0; } while(0)
#define IO_RA6_SetPushPull()    do { ODCONAbits.ODCA6 = 1; } while(0)
#define IO_RA6_SetOpenDrain()   do { ODCONAbits.ODCA6 = 0; } while(0)
#define IO_RA6_SetAnalogMode()  do { ANSELAbits.ANSA6 = 1; } while(0)
#define IO_RA6_SetDigitalMode() do { ANSELAbits.ANSA6 = 0; } while(0)

// get/set IO_RA7 aliases
#define IO_RA7_TRIS               TRISAbits.TRISA7
#define IO_RA7_LAT                LATAbits.LATA7
#define IO_RA7_PORT               PORTAbits.RA7
#define IO_RA7_WPU                WPUAbits.WPUA7
#define IO_RA7_OD                ODCONAbits.ODCA7
#define IO_RA7_ANS                ANSELAbits.ANSA7
#define IO_RA7_SetHigh()            do { LATAbits.LATA7 = 1; } while(0)
#define IO_RA7_SetLow()             do { LATAbits.LATA7 = 0; } while(0)
#define IO_RA7_Toggle()             do { LATAbits.LATA7 = ~LATAbits.LATA7; } while(0)
#define IO_RA7_GetValue()           PORTAbits.RA7
#define IO_RA7_SetDigitalInput()    do { TRISAbits.TRISA7 = 1; } while(0)
#define IO_RA7_SetDigitalOutput()   do { TRISAbits.TRISA7 = 0; } while(0)
#define IO_RA7_SetPullup()      do { WPUAbits.WPUA7 = 1; } while(0)
#define IO_RA7_ResetPullup()    do { WPUAbits.WPUA7 = 0; } while(0)
#define IO_RA7_SetPushPull()    do { ODCONAbits.ODCA7 = 1; } while(0)
#define IO_RA7_SetOpenDrain()   do { ODCONAbits.ODCA7 = 0; } while(0)
#define IO_RA7_SetAnalogMode()  do { ANSELAbits.ANSA7 = 1; } while(0)
#define IO_RA7_SetDigitalMode() do { ANSELAbits.ANSA7 = 0; } while(0)

// get/set SCK1 aliases
#define SCK1_TRIS               TRISBbits.TRISB1
#define SCK1_LAT                LATBbits.LATB1
#define SCK1_PORT               PORTBbits.RB1
#define SCK1_WPU                WPUBbits.WPUB1
#define SCK1_OD                ODCONBbits.ODCB1
#define SCK1_ANS                ANSELBbits.ANSB1
#define SCK1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define SCK1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define SCK1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define SCK1_GetValue()           PORTBbits.RB1
#define SCK1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define SCK1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define SCK1_SetPullup()      do { WPUBbits.WPUB1 = 1; } while(0)
#define SCK1_ResetPullup()    do { WPUBbits.WPUB1 = 0; } while(0)
#define SCK1_SetPushPull()    do { ODCONBbits.ODCB1 = 1; } while(0)
#define SCK1_SetOpenDrain()   do { ODCONBbits.ODCB1 = 0; } while(0)
#define SCK1_SetAnalogMode()  do { ANSELBbits.ANSB1 = 1; } while(0)
#define SCK1_SetDigitalMode() do { ANSELBbits.ANSB1 = 0; } while(0)

// get/set SDO1 aliases
#define SDO1_TRIS               TRISBbits.TRISB2
#define SDO1_LAT                LATBbits.LATB2
#define SDO1_PORT               PORTBbits.RB2
#define SDO1_WPU                WPUBbits.WPUB2
#define SDO1_OD                ODCONBbits.ODCB2
#define SDO1_ANS                ANSELBbits.ANSB2
#define SDO1_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define SDO1_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define SDO1_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define SDO1_GetValue()           PORTBbits.RB2
#define SDO1_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define SDO1_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define SDO1_SetPullup()      do { WPUBbits.WPUB2 = 1; } while(0)
#define SDO1_ResetPullup()    do { WPUBbits.WPUB2 = 0; } while(0)
#define SDO1_SetPushPull()    do { ODCONBbits.ODCB2 = 1; } while(0)
#define SDO1_SetOpenDrain()   do { ODCONBbits.ODCB2 = 0; } while(0)
#define SDO1_SetAnalogMode()  do { ANSELBbits.ANSB2 = 1; } while(0)
#define SDO1_SetDigitalMode() do { ANSELBbits.ANSB2 = 0; } while(0)

// get/set SDI1 aliases
#define SDI1_TRIS               TRISBbits.TRISB3
#define SDI1_LAT                LATBbits.LATB3
#define SDI1_PORT               PORTBbits.RB3
#define SDI1_WPU                WPUBbits.WPUB3
#define SDI1_OD                ODCONBbits.ODCB3
#define SDI1_ANS                ANSELBbits.ANSB3
#define SDI1_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define SDI1_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define SDI1_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define SDI1_GetValue()           PORTBbits.RB3
#define SDI1_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define SDI1_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define SDI1_SetPullup()      do { WPUBbits.WPUB3 = 1; } while(0)
#define SDI1_ResetPullup()    do { WPUBbits.WPUB3 = 0; } while(0)
#define SDI1_SetPushPull()    do { ODCONBbits.ODCB3 = 1; } while(0)
#define SDI1_SetOpenDrain()   do { ODCONBbits.ODCB3 = 0; } while(0)
#define SDI1_SetAnalogMode()  do { ANSELBbits.ANSB3 = 1; } while(0)
#define SDI1_SetDigitalMode() do { ANSELBbits.ANSB3 = 0; } while(0)

// get/set FLASH2_WP aliases
#define FLASH2_WP_TRIS               TRISCbits.TRISC2
#define FLASH2_WP_LAT                LATCbits.LATC2
#define FLASH2_WP_PORT               PORTCbits.RC2
#define FLASH2_WP_WPU                WPUCbits.WPUC2
#define FLASH2_WP_OD                ODCONCbits.ODCC2
#define FLASH2_WP_ANS                ANSELCbits.ANSC2
#define FLASH2_WP_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define FLASH2_WP_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define FLASH2_WP_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define FLASH2_WP_GetValue()           PORTCbits.RC2
#define FLASH2_WP_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define FLASH2_WP_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define FLASH2_WP_SetPullup()      do { WPUCbits.WPUC2 = 1; } while(0)
#define FLASH2_WP_ResetPullup()    do { WPUCbits.WPUC2 = 0; } while(0)
#define FLASH2_WP_SetPushPull()    do { ODCONCbits.ODCC2 = 1; } while(0)
#define FLASH2_WP_SetOpenDrain()   do { ODCONCbits.ODCC2 = 0; } while(0)
#define FLASH2_WP_SetAnalogMode()  do { ANSELCbits.ANSC2 = 1; } while(0)
#define FLASH2_WP_SetDigitalMode() do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set FLASH2_HLD aliases
#define FLASH2_HLD_TRIS               TRISDbits.TRISD0
#define FLASH2_HLD_LAT                LATDbits.LATD0
#define FLASH2_HLD_PORT               PORTDbits.RD0
#define FLASH2_HLD_WPU                WPUDbits.WPUD0
#define FLASH2_HLD_OD                ODCONDbits.ODCD0
#define FLASH2_HLD_ANS                ANSELDbits.ANSD0
#define FLASH2_HLD_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define FLASH2_HLD_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define FLASH2_HLD_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define FLASH2_HLD_GetValue()           PORTDbits.RD0
#define FLASH2_HLD_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define FLASH2_HLD_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define FLASH2_HLD_SetPullup()      do { WPUDbits.WPUD0 = 1; } while(0)
#define FLASH2_HLD_ResetPullup()    do { WPUDbits.WPUD0 = 0; } while(0)
#define FLASH2_HLD_SetPushPull()    do { ODCONDbits.ODCD0 = 1; } while(0)
#define FLASH2_HLD_SetOpenDrain()   do { ODCONDbits.ODCD0 = 0; } while(0)
#define FLASH2_HLD_SetAnalogMode()  do { ANSELDbits.ANSD0 = 1; } while(0)
#define FLASH2_HLD_SetDigitalMode() do { ANSELDbits.ANSD0 = 0; } while(0)

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