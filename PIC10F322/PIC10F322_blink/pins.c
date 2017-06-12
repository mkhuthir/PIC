
#include <xc.h>
#include "pins.h"
#include "stdbool.h"


void PIN_MANAGER_Initialize(void)
{
    
    LATA    = 0x00;    
    TRISA   = 0x0F;
    ANSELA  = 0xFF;
    WPUA    = 0x00;
}       

void PIN_MANAGER_IOC(void)
{   

}
