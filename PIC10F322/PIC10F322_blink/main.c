
#include "device_initialize.h"

// Main application
void main(void)
{
    SYSTEM_Initialize();    // Initialize the device

    TRISAbits.TRISA0 = 0;   // Set Channel RA0 as output
    TRISAbits.TRISA1 = 0;   // Set Channel RA1 as output
        
    LATAbits.LATA0 = 1;     // Set RA0 (LED D0) high
    LATAbits.LATA1 = 0;     // Set RA0 (LED D1) high
   
    while (1)
    {
        LATAbits.LATA0 = ~LATAbits.LATA0;
        LATAbits.LATA1 = ~LATAbits.LATA1;
        __delay_ms(100);
        
    }
}
