/**
 *******************************************************************
 *  Lesson 10 - "Interrupts and Pull-ups"
 *
 *  This lesson will introduce interrupts and how they are useful. It will
 *  also introduce internal weak pull-ups that are available on most PICs.
 *
 *  It should be noted that this lesson is more efficent than the last
 *  one, "Timer0". Notice how the processor is no longer waiting for
 *  Timer0 to roll over. Instead, we let the hardware modules do the work,
 *  freeing the CPU to do other things in the main loop
 *
 *  The switch is no longer continuously polled for a button press. Instead,
 *  an interrupt will occur which will automically place the program counter
 *  inside of the ISR where we can change directions outisde of normal code execution
 *
 *  LEDs rotate at a constant speed and the switch reverses their direction
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

#define DOWN                0
#define UP                  1

#define SWITCH              PORTAbits.RA2

#define LED_RIGHT           1
#define LED_LEFT            0

#define PULL_UPS                                    //if this is uncommented, the trace under JP5 can be cut
                                                    //with no affect on the output
//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

unsigned char _direction;                       //a global variable
void main(void) {
                                                //general init
    OSCCON = 0b00111000;                        //500KHz clock speed
    TRISC = 0;                                  //all LED pins are outputs
    LATC = 0;                                   //init LEDs in OFF state

    LATCbits.LATC3 = 1;                         //DS4 is lit
    _direction = LED_RIGHT;                     //start with LEDs rotating from right to left

                                                //setup switch (SW1)
    TRISAbits.TRISA2 = 1;                       //switch as input
    ANSELAbits.ANSA2 = 0;                       //digital switch

                                                //by using the internal resistors, you can save cost by eleminating an external pull-up/down resistor
#ifdef PULL_UPS
    WPUA2 = 1;                                  //enable the weak pull-up for the switch
    nWPUEN = 0;                                 //enable the global weak pull-up bit
#endif
                                                //setup TIMER0 as the delay
                                                //1:256 prescaler for a delay of: (insruction-cycle * 256-counts)*prescaler = ((8uS * 256)*256) =~ 524mS
    OPTION_REG = 0b00000111;                    //setup TIMER0
    INTCONbits.TMR0IE = 1;                      //enable the TMR0 rollover interrupt

                                                //setup interrupt on change for the switch
    INTCONbits.IOCIE = 1;                       //enable interrupt on change global
    IOCANbits.IOCAN2 = 1;                       //when SW1 is pressed, enter the ISR
    GIE = 1;                                    //enable global interupts


    while (1) {
        continue;                               //can spend rest of time doing something critical here
    }
}

void interrupt ISR(void) {

    if (IOCAF) {                                //SW1 was just pressed
        IOCAF = 0;                              //must clear the flag in software
        __delay_ms(5);                          //debounce by waiting and seeing if still held down
        if (SWITCH == DOWN) {
            _direction ^= 1;                    //change directions
        }
    }

    if (INTCONbits.T0IF) {
        INTCONbits.T0IF = 0;

        if (_direction == LED_RIGHT) {
            LATC >> = 1;                        //rotate right
            if (STATUSbits.C == 1)              //when the last LED is lit, restart the pattern
                LATCbits.LATC3 = 1;
        } else{
            LATC << = 1;                        //rotate left
            if (LATCbits.LATC4 == 1)            //when the last LED is lit, restart the pattern
                LATCbits.LATC0 = 1;

        }
    }


}