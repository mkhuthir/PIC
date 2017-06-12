
#include "device_initialize.h"

// Main application
void main(void)
{
    SYSTEM_Initialize();    // Initialize the device

   
    while (1)
    {
        LATAbits.LATA0 = ~LATAbits.LATA0;
        LATAbits.LATA1 = ~LATAbits.LATA1;
        __delay_ms(100);
        
    }
}
