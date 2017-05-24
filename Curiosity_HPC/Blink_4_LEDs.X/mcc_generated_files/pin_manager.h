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