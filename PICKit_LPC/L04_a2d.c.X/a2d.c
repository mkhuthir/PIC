/**
 *******************************************************************
 * Lesson 4 - "Analog to Digital"
 *
 * This shows how to read the A2D converter and display the
 * High order parts on the 4 bit LED display.
 * The pot on the Low Pin Count Demo board varies the voltage
 * coming in on in A0.
 *
 * The A2D is referenced to the same Vdd as the device, which
 * is nominally is 5V.  The A2D returns the ratio of the voltage
 * on Pin RA0 to 5V.  The A2D has a resolution of 10 bits, with 1023 
 * representing 5V and 0 representing 0V.
 *
 *
 * The top four MSbs of the ADC are mirrored onto the LEDs. Rotate the potentiometer
 * to change the display.
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

#include <htc.h>                                    //PIC hardware mapping
#define _XTAL_FREQ 500000                           //Used by the XC8 delay_ms(x) macro

//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

void main(void) {
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs

                                                    //setup ADC
    TRISAbits.TRISA4 = 1;                           //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                           //analog
    ADCON0 = 0b00001101;                            //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                            //left justified - FOSC/8 speed - Vref is Vdd

    while (1) {
        __delay_us(5);                              //wait for ADC charging cap to settle
        GO = 1;
        while (GO) continue;                        //wait for conversion to be finished
        LATC = (ADRESH >> 4);                       //grab the top 4 MSbs
    }



}