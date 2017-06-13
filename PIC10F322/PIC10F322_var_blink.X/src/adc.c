// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.

//Section: Included Files

#include <xc.h>
#include "adc.h"

//Section: ADC Module APIs

void ADC_Initialize(void)
{
    ADCON = 0x89;         // ADON enabled; CHS AN2;

    TRISAbits.TRISA2 = 1; // POT1 pin (RA2) as input
    ANSELAbits.ANSA2 = 1; // configure (RA2) as analog input

}


adc_result_t ADC_GetConversion(adc_channel_t channel)
{
    // Select the A/D channel
    ADCONbits.CHS = channel;

    // Turn on the ADC module
    ADCONbits.ADON = 1;

    // Start the conversion
    ADCONbits.GO_nDONE = 1;

    // Wait for the conversion to finish
    while (ADCONbits.GO_nDONE);

    // Conversion finished, return the result
    return ADRES;
}



