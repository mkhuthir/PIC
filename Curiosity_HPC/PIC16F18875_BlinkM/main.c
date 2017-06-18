// BlinkM Library
// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.
// Device data sheet https://thingm.com/fileadmin/thingm/downloads/BlinkM_datasheet.pdf

/** How the BlinkM is connected to Curiosity HPC Board:
 
    BlankM  MikroBus    Curiosity HPC   Remarks
-------------------------------------------------------------------
    I2C C   SCL         RC3             I2C clock
    I2C D   SDA         RC4             I2C data
    PWR-    GND         GND             Ground
    PWR+    +5V         +5V             Power supply
-------------------------------------------------------------------
 
 * RC3 & RC4 must have pull-up resistors enabled since BlinkM does not have pull-up resistors on its module.
 
**/

#include "mcc_generated_files/mcc.h"
#include "BlinkM.h"

void WaitKeyPress()
{
    while(S1_GetValue());         // Wait until S1 key is pressed
    while(!S1_GetValue());        // Wait until S1 key is released
    __delay_ms(100);
}

// Main code
void main(void)
{
    // Setup and initializations
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

   
    // Testing all functions..
    // Demo Execution loop
    while(1){
        
        GoToRGB(0xFF, 0xFF, 0xFF);  // Start with White
        StopScript();               // Stop Script
        LED_D2_SetHigh();           // All Dx LEDs On.
        LED_D3_SetHigh();
        LED_D4_SetHigh();
        LED_D5_SetHigh();
        WaitKeyPress();             //Wait
        
        GoToRGB(0x00, 0x00, 0x00);  // Off
        WaitKeyPress();
        
        GoToRGB(0xFF, 0x00, 0x00);  // Red
        WaitKeyPress();

        GoToRGB(0x00, 0xFF, 0x00);  // Green
        WaitKeyPress();

        GoToRGB(0x00, 0x00, 0xFF);  // Blue
        WaitKeyPress();

        GoToRGB(0xFF, 0xFF, 0x00);  // Yellow
        WaitKeyPress();
        
        GoToRGB(0x00, 0xFF, 0xFF);  // Cyan
        WaitKeyPress();
        
        GoToRGB(0xFF, 0x00, 0xFF);  // Magenta
        WaitKeyPress();
    
        /*
        FadeToRGB(R, G, B);
        FadeToHSB(H, S, B);
        FadeToRndRGB(R, G, B);
        FadeToRndHSB(H, S, B);
        PlayLightScript(n, r, p);
        */
        
        
        //Demo is done...Blink all LEDs and wait for a key press to start another demo cycle.
        while(S1_GetValue())            // wait for key press
        {
            GoToRGB(0x00, 0x00, 0x00);  // off
            LED_D2_Toggle();
            LED_D3_Toggle();
            LED_D4_Toggle();
            LED_D5_Toggle();
            __delay_ms(300);
            GoToRGB(0xFF, 0x00, 0x00);  // Red
            __delay_ms(300);

        }
        while(!S1_GetValue());          // wait for key release
    }
        
}
