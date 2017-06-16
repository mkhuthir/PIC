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

// Config bits that are part-specific for the PIC16F1829
// CONFIG1
#pragma config FOSC = INTOSC        // Oscillator Selection->INTOSC oscillator: I/O function on CLKIN pin
#pragma config WDTE = OFF            // Watchdog Timer Enable->WDT disabled
#pragma config PWRTE = OFF          // Power-up Timer Enable->PWRT disabled
#pragma config MCLRE = ON         // MCLR Pin Function Select->MCLR/VPP pin function is MCLR
#pragma config CP = OFF                // Flash Program Memory Code Protection->Program memory code protection is disabled
#pragma config CPD = OFF              // Data Memory Code Protection->Data memory code protection is disabled
#pragma config BOREN = ON           // Brown-out Reset Enable->Brown-out Reset enabled
#pragma config CLKOUTEN = OFF    // Clock Out Enable->CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin
#pragma config IESO = ON             // Internal/External Switchover->Internal/External Switchover mode is enabled
#pragma config FCMEN = ON          // Fail-Safe Clock Monitor Enable->Fail-Safe Clock Monitor is enabled

// CONFIG2
#pragma config WRT = OFF            // Flash Memory Self-Write Protection->Write protection off
#pragma config PLLEN = OFF          // PLL Enable->4x PLL disabled
#pragma config STVREN = ON       // Stack Overflow/Underflow Reset Enable->Stack Overflow or Underflow will cause a Reset
#pragma config BORV = LO            // Brown-out Reset Voltage Selection->Brown-out Reset Voltage (Vbor), low trip point selected.
#pragma config LVP = OFF            // Low-Voltage Programming Enable->Low-voltage programming disabled

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