// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.

#include <xc.h>
#include "pins.h"
#include "stdbool.h"

// GPIO and peripheral I/O initialization
void PINS_Initialize(void)
{
    
    LATA    = 0x00;     // All pins =0
    TRISA   = 0x00;     // All pins are output
    ANSELA  = 0xFF;     // All pins are digital
    WPUA    = 0x00;     // All pull-up resistors are disabled
}       

// Interrupt on Change Handling routine 
void PINS_IOC(void)
{   

}
