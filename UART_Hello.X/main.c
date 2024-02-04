// Muthanna Alwahash
// Feb 2024

#include "mcc_generated_files/system/system.h"
#include "util/delay.h"

int main(void)
{
    SYSTEM_Initialize();

    LED_B_SetLow();
    LED_G_SetLow();
    LED_Y_SetLow();
    LED_R_SetLow();

    while(1)
    {
        LED_B_Toggle();
        _delay_ms(100);
        LED_G_Toggle();
        _delay_ms(100);
        LED_Y_Toggle();
        _delay_ms(100);
        LED_R_Toggle();
        _delay_ms(100);
    }    
}