// EMC1001 Library
// Muthanna A. Attyah (April 2017)
// Please feel free to copy and use code.
// Device datasheet http://ww1.microchip.com/downloads/en/DeviceDoc/20005411A.pdf

#include "mcc_generated_files/mcc.h"
#include "EMC1001.h"

// Main code
void main(void)
{
    // Setup and initializations
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    // LEDs initializations
    LED2_SetLow();  // Data reading indicator
    LED3_SetLow();  // EMC1001 ALARM1 indicator
    LED4_SetLow();  // EMC1001 ALRAM2 indicator
    LED5_SetLow();  // Not used
    
    // EMC1001 initializations
    EMC1001_SetConversionRate(0x05);    // Set conversion rate value (0x00 - 0x09) default is 0x04.
    EMC1001_SetThermLimit(30);          // Set the THERM Limit. default limit is 0b01010101 (+85°C)
    EMC1001_SetThermHysteresis(3);      // Set the THERM Hysteresis. default is 0b00001010 (+10°C)
    EMC1001_SMBusTimeout(Disable);      // Disable SMBus Timeout. default is disabled.
    EMC1001_MASK1(Disable);             // When MASK is disabled ALERT is enabled; any out-of-limit condition will assert the signaled pin (default)
    EMC1001_StandbyMode(Disable);       // Disable Standby mode (STOP). default is disabled.
    EMC1001_THERM2(Disable);            // When enabled the ALERT/THERM2 pin acts as the THERM2 signal and Bit 7 is ignored. otherwise pin acts as the ALERT (SMBALERT#) signal (default)
    EMC1001_SetTempHighLimit(29,25);    // Set the Temperature High Limit (HB,LB): example 25.75°C should be passed as (25,75))
    EMC1001_SetTempLowLimit(26,75);     // Set the Temperature Low Limit (HB,LB): example 30.25°C should be passed as (30,25)
    
    // Excution loop
    while (1)
    {
        printf("\x0C");                 // Terminal Form Feed to erase screen
        puts("Microchip EMC1001 Temperature Sensor Demo");
        puts("MPLABXpress LED2=read indicator, LED3=EMC1001 ALARM1, LED4=EMC1001 ALARM2\n");

        LED2_SetHigh();                     // LED2 ON when reading data
        EMC1001_PrintInfo();                // Read and print EMC1001 Registers
        EMC1001_PrintTemp();                // Read and print current temperature
        LED2_SetLow();                      // LED2 OFF when finish reading data

        LED3_LAT=~EMC1001_ALARM1_GetValue(); // Display ALARM1 on LED3
        LED4_LAT=~EMC1001_ALARM2_GetValue(); // Display ALARM2 on LED4
                
        __delay_ms(1000);        // delay 1000ms
    }
}
