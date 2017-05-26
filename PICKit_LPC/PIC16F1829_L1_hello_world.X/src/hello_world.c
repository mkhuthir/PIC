/**
 *******************************************************************
 *  Lesson 1 - "Hello World"
 *
 *  The LEDs are connected to input-outpins (I/O) RC0 through RC3. First, the I/O pin
 *  must be configured for an output. In this case, when one of these pins is driven high
 *  (RC0 =  1 ), the LED will turn on. These two logic levels are derived from the power pins
 *  of the PIC MCU. Since the PIC device?s power pin (VDD) is connected to 5V and the
 *  source (VSS) to ground (0V), a '1' is equivalent to 5V, and a '0' is 0V.
 *
 *
 *  This turns on DS1 LED on the Low Pin Count Demo Board.
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

#include <htc.h>                            //PIC hardware mapping

//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

                                            //Every program needs a `main` function
void main(void) {
    TRISCbits.TRISC0 = 0;                   //using pin as output
    LATC = 0;                               //clear all pins to 0
    LATCbits.LATC0 = 1;                     //turn ON the LED by writing to the latch
    while(1) continue;                      //sit here forever doing nothing, think "while(true), continue in this loop"

}