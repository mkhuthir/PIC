/**
 *******************************************************************
 * Lesson 3 - "Rotate"
 *
 * This lesson will introduce shifting instructions as well as bit-oriented skip operations to
 * move the LED display.
 *
 * LEDs rotate from right to left at a rate of 1.5s
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

void main(void) {
    TRISC = 0;                                          //all pins are outputs
    OSCCON = 0b00111000;                                //500KHz clock speed
    LATC = 0b0001000;                                   //start the rotation by setting DS4 ON - rotate from the right to left

    while (1) {
            __delay_ms(500);                            //delay 500ms
            LATC >> = 1;                                //shift to the right by 1
            if(STATUSbits.C)                            //when the last LED is lit, restart the pattern
                LATCbits.LATC3 = 1;
    }

}