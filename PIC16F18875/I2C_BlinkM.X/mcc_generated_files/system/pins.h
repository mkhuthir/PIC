// Muthanna Alwahash
// Jan 2024

/**
 * Generated Pins header File
 * 
 * @file pins.h
 * 
 * @defgroup  pinsdriver Pins Driver
 * 
 * @brief This is generated driver header for pins. 
 *        This header file provides APIs for all pins selected in the GUI.
 *
 * @version Driver Version  3.0.0
*/

#ifndef PINS_H
#define PINS_H

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set IO_RB4 aliases
#define S1_TRIS                 TRISBbits.TRISB4
#define S1_LAT                  LATBbits.LATB4
#define S1_PORT                 PORTBbits.RB4
#define S1_WPU                  WPUBbits.WPUB4
#define S1_OD                   ODCONBbits.ODCB4
#define S1_ANS                  ANSELBbits.ANSB4
#define S1_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define S1_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define S1_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define S1_GetValue()           PORTBbits.RB4
#define S1_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define S1_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define S1_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define S1_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define S1_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define S1_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define S1_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define S1_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)
// get/set IO_RC3 aliases
#define SCL1_TRIS                 TRISCbits.TRISC3
#define SCL1_LAT                  LATCbits.LATC3
#define SCL1_PORT                 PORTCbits.RC3
#define SCL1_WPU                  WPUCbits.WPUC3
#define SCL1_OD                   ODCONCbits.ODCC3
#define SCL1_ANS                  ANSELCbits.ANSC3
#define SCL1_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define SCL1_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define SCL1_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define SCL1_GetValue()           PORTCbits.RC3
#define SCL1_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define SCL1_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define SCL1_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define SCL1_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define SCL1_SetPushPull()        do { ODCONCbits.ODCC3 = 0; } while(0)
#define SCL1_SetOpenDrain()       do { ODCONCbits.ODCC3 = 1; } while(0)
#define SCL1_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define SCL1_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)
// get/set IO_RC4 aliases
#define SDA1_TRIS                 TRISCbits.TRISC4
#define SDA1_LAT                  LATCbits.LATC4
#define SDA1_PORT                 PORTCbits.RC4
#define SDA1_WPU                  WPUCbits.WPUC4
#define SDA1_OD                   ODCONCbits.ODCC4
#define SDA1_ANS                  ANSELCbits.ANSC4
#define SDA1_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define SDA1_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define SDA1_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define SDA1_GetValue()           PORTCbits.RC4
#define SDA1_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define SDA1_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define SDA1_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define SDA1_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define SDA1_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define SDA1_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define SDA1_SetAnalogMode()      do { ANSELCbits.ANSC4 = 1; } while(0)
#define SDA1_SetDigitalMode()     do { ANSELCbits.ANSC4 = 0; } while(0)
// get/set IO_RC7 aliases
#define TX_TRIS                 TRISCbits.TRISC7
#define TX_LAT                  LATCbits.LATC7
#define TX_PORT                 PORTCbits.RC7
#define TX_WPU                  WPUCbits.WPUC7
#define TX_OD                   ODCONCbits.ODCC7
#define TX_ANS                  ANSELCbits.ANSC7
#define TX_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define TX_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define TX_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define TX_GetValue()           PORTCbits.RC7
#define TX_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define TX_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define TX_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define TX_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define TX_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define TX_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define TX_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define TX_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)
/**
 * @ingroup  pinsdriver
 * @brief GPIO and peripheral I/O initialization
 * @param none
 * @return none
 */
void PIN_MANAGER_Initialize (void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt on Change Handling routine
 * @param none
 * @return none
 */
void PIN_MANAGER_IOC(void);


#endif // PINS_H
