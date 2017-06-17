// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device datasheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf

#include "mcc_generated_files/mcc.h"
#include "BlinkM.h"

void WaitKeyPress()
{
    while(S1_GetValue());         // Wait until S1 key is pressed
    while(!S1_GetValue());        // Wait until S1 key is released
}

// Main code
void main(void)
{
    // Setup and initializations
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

   
    // Testing all functions..

    // Execution loop
    while(1){
        
        GoToRGB(0x00, 0x00, 0x00); // off
        WaitKeyPress();

        GoToRGB(0xFF, 0x00, 0x00); // Red
        WaitKeyPress();

        GoToRGB(0x00, 0xFF, 0x00); // Green
        WaitKeyPress();

        GoToRGB(0x00, 0x00, 0xFF); // Blue
        WaitKeyPress();

        GoToRGB(0xFF, 0xFF, 0xFF); // White
        WaitKeyPress();
    
        /*
        FadeToRGB(R, G, B);
        FadeToHSB(H, S, B);
        FadeToRndRGB(R, G, B);
        FadeToRndHSB(H, S, B);
        PlayLightScript(n, r, p);
        */
        
        
        //That's All...Blink all LEDs and wait for a key press to start another cycle.
        GoToRGB(0x00, 0x00, 0x00);  // off
        while(S1_GetValue())
        {
            LED_D2_Toggle();
            LED_D3_Toggle();
            LED_D4_Toggle();
            LED_D5_Toggle();
            __delay_ms(100);
        }
    }
        
}
