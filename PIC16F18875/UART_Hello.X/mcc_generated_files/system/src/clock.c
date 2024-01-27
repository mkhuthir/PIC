// Muthanna Alwahash
// Jan 2024

#include <xc.h>
#include "../clock.h"

void CLOCK_Initialize(void)
{
    // Set the CLOCK CONTROL module to the options selected in the user interface.
    OSCCON1 = 0x60;     //NDIV 1; NOSC HFINTOSC;
    OSCCON3 = 0x0;      //SOSCPWR Low power; CSWHOLD may proceed;
    OSCEN = 0x0;        //EXTOEN disabled; HFOEN disabled; MFOEN disabled; LFOEN disabled; SOSCEN disabled; ADOEN disabled;
    OSCFRQ = 0x2;       //HFFRQ 4_MHz;
    OSCTUNE = 0x0;      //TUN undefined; 
}