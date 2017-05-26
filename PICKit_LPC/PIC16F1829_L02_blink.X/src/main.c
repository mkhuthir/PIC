/**
 *******************************************************************
 * Lesson 2 - "Blink"
 *
 *  One way to create a delay is to spend time decrementing a value. In assembly, the timing
 *  can be accurately programmed since the user will have direct control on how the
 *  code is executed. In 'C', the compiler takes the 'C' and compiles it into assembly before
 *  creating the file to program to the actual PIC MCU (HEX file). Because of this, it is hard
 *  to predict exactly how many instructions it takes for a line of 'C' to execute.
 *
 *  DS1 blinks at a rate of approximately 1.5 seconds.
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

void main(void) {
    unsigned int delay;                                 //create a variable of 16 bits in length
    
    OSCCON = 0b00111000;                                //500KHz clock speed
    TRISCbits.TRISC0 = 0;                               //using pin as output
    delay = 11250;
    while (1) {
        while(delay-- != 0)continue;                    //each instruction is 8us (1/(500KHz/4))
        LATCbits.LATC0 ^= 1;                            //toggle the LED
        delay = 11250;                                  //assign a value since it is at 0 from the delay loop
    }
                                                        //Alternative HI-TECH method using a predefined and more accurate macro
                                                        //    while(1){
                                                        //        __delay_ms(1000);
                                                        //        LATCbits.LATC0 ^= 1;
                                                        //
                                                        //    }

}
