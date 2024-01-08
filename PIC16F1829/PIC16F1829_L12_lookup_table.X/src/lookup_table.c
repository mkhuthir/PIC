/**
 *******************************************************************
 * Lesson 12 - "LookupTable"
 *
 * This shows using a table lookup function to implement a
 * binary to gray code conversion.  The POT is read by the A2D,
 * The high order 4 bits then are converted to Gray Code and
 * displayed on the LEDs.

 * The ADC value is used as the offset into reading the gray code equivalent inside of
 * a constant data array.
 *
 * Gray coded binary will be reflected on the LEDs in accordance with the POT reading
 *
 * PIC: 16F1829
 * Compiler: XC8 v1.00
 * IDE: MPLABX v1.10
 *
 * Board: PICkit 3 Low Pin Count Demo Board
 * Date: 6.1.2012
 *
 * *******************************************************************
 * See Low Pin Count Demo Board User's Guide for Lesson Information*
 * ******************************************************************
 */

#include <htc.h>                                     //PIC hardware mapping
#define _XTAL_FREQ 500000                            //Used by the XC8 delay_ms(x) macro


//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

unsigned char adc(void);                            //prototype

                                                    //Important to use the 'const' keyword here. This puts the array
                                                    //into program space instead of data space. This is ideal for values
                                                    //that do not change
                                                    //  b'0000'       :  0
                                                    //  b'0001'       :  1
                                                    //  ...           :  ...
const unsigned char gray_code[] = {                 //lookup table for binary->gray code
    0b0000,0b0001,0b0011,0b0010,0b0110,
    0b0111,0b0101,0b0100,0b1100,0b1101,
    0b1111,0b1110,0b1010,0b1011,0b1001,
    0b1000
};

void main(void){
    unsigned char adc_value;
    
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs

                                                    //setup ADC
    TRISAbits.TRISA4 = 1;                           //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                           //analog
    ADCON0 = 0b00001101;                            //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                            //left justified - FOSC/8 speed - Vref is Vdd

    while(1){
       adc_value =  adc();                          //get the ADC value from the POT
       adc_value >>= 4;                             //save only the top 4 MSbs
       LATC = gray_code[adc_value];                 //convert to Grey Code and display on the LEDs
    }
    
}


unsigned char adc(void) {
    __delay_us(5);                                  //wait for ADC charging cap to settle
    GO = 1;
    while (GO) continue;                            //wait for conversion to be finished

    return ADRESH;                                  //grab the top 8 MSbs

}
