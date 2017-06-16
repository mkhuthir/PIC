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

#define _XTAL_FREQ 500000                               //Used by the XC8 delay_ms(x) macro

#include <xc.h>                            //PIC hardware mapping

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