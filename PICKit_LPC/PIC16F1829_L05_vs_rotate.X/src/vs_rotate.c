/**
 *******************************************************************
 *  Lesson 5 - "Variable Speed Rotate"
 *
 *  This lesson combines all of the previous lessons to produce a variable speed rotating
 *  LED display that is proportional to the ADC value. The ADC value and LED rotate
 *  speed are inversely proportional to each other.
 *
 *  Rotate the POT counterclockwise to see the LEDs shift faster.
 *
 *  PIC: 16F1829
 *  Compiler: XC8 v1.00
 *  IDE: MPLABX v1.10
 *
 *  Board: PICkit 3 Low Pin Count Demo Board
 *  Date: 6.1.2012
 *
 * *******************************************************************
 * See Low Pin Count Demo Board User's Guide for Lesson Information*
 * ******************************************************************
 */

#include <htc.h>                                        //PIC hardware mapping
#define _XTAL_FREQ 500000                               //Used by the XC8 delay_ms(x) macro

//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

unsigned char adc(void);                                //prototype

void main(void) {
    unsigned char delay;


    OSCCON = 0b00111000;                                //500KHz clock speed
    TRISC = 0;                                          //all LED pins are outputs
    LATC = 0;
    LATCbits.LATC3 = 1;                                 //start sequence with DS4 lit

                                                        //setup ADC
    TRISAbits.TRISA4 = 1;                               //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                               //analog
    ADCON0 = 0b00001101;                                //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                                //left justified - FOSC/8 speed - Vref is Vdd

    while (1) {
       delay = adc();                                   //grab the top 8 MSbs
       __delay_ms(5);                                   //delay for AT LEAST 5ms
       while (delay-- != 0) 
           __delay_ms(2);                               //decrement the 8 MSbs of the ADC and dealy 2ms for each
       LATC >> = 1;                                     //shift to the right by 1 to light up the next LED
       if(STATUSbits.C)                                 //when the last LED is lit, restart the pattern
           LATCbits.LATC3 = 1;
    }

}

unsigned char adc(void) {
    __delay_us(5);                                      //wait for ADC charging cap to settle
    GO = 1;
    while (GO) continue;                                //wait for conversion to be finished

    return ADRESH;                                      //grab the top 8 MSbs

}