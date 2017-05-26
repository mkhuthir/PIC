/**
 *******************************************************************
 *  Lesson 9 - "Timer0"
 *
 *  Timer0 is a counter implemented in the processor. It may be used to count instruction
 *  cycles or external events, that occur at or below the instruction cycle rate.
 *  In the PIC18, Timer0 can be used as either an 8-bit or 16-bit counter, or timer. The
 *  enhanced mid-range core implements only an 8-bit counter.
 *  This lesson configures Timer0 to count instruction cycles and to set a flag when it rolls
 *  over. This frees up the processor to do meaningful work rather than wasting instruction
 *  cycles in a timing loop.
 *  Using a counter provides a convenient method of measuring time or delay loops as it
 *  allows the processor to work on other tasks rather than counting instruction cycles.
 *
 *
 *  LEDs rotate from right to left, similar to Lesson 3, at a rate of ~.5 seconds.
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

void main(void) {
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs
    LATC = 0;
    OPTION_REG = 0b00000111;                        //1:256 prescaler for a delay of: (insruction-cycle * 256-counts)*prescaler = ((8uS * 256)*256) =~ 524mS
    LATCbits.LATC4 = 1;                             //start with DS4 lit

    
    while (1) {
        while (!INTCONbits.TMR0IF) continue;        //you can let the PIC do work here, but for now we will wait for the flag
        INTCONbits.T0IF = 0;                        //flag MUST be cleared in software
        LATC >> = 1;                                //rotate the LEDs
        if (STATUSbits.C)                           //when the last LED is lit, restart the pattern
            LATCbits.LATC3 = 1;

    }


}