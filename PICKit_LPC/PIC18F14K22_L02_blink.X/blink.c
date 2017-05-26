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
 *  PIC: 18F14K22
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

#include <htc.h>            //PIC hardware mapping
#define _XTAL_FREQ 500000   //Used by the compiler for the delay_ms(x) macro

//config bits that are part-specific for the PIC18F14K22
__CONFIG(1, FOSC_IRC & PLLEN_OFF & FCMEN_OFF);
__CONFIG(2, PWRTEN_OFF & BOREN_OFF & WDTEN_OFF);
__CONFIG(3, HFOFST_OFF & MCLRE_OFF);
__CONFIG(4, STVREN_ON & LVP_OFF & DEBUG_ON);
__CONFIG(5, CP0_OFF & CP1_OFF & CPB_OFF & CPD_OFF);
__CONFIG(6, WRT0_OFF & WRT1_OFF & WRTC_OFF & WRTB_OFF & WRTD_OFF);
__CONFIG(7, EBTR0_OFF & EBTR1_OFF & EBTRB_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

void main(void) {
    unsigned int delay;             //create a variable of 16 bits in length
    
    OSCCON = 0b00100010;            //500KHz clock speed based on internal oscillator block
    TRISCbits.TRISC0 = 0;           //using pin as output
    delay = 11250;
    while (1) {
        while(delay-- != 0)continue; //each instruction is 8us (1/(500KHz/4))
        LATCbits.LATC0 ^= 1;         //toggle the LED
        delay = 11250;               //reassign since it has been decremented to 0 from the delay loop
    }
                                    //Alternative XC8 method using a predefined and more accurate macro
                                    //    while(1){
                                    //        __delay_ms(1000);
                                    //        LATCbits.LATC0 ^= 1;
                                    //
                                    //    }

}
