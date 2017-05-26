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

#include <xc.h>                            //PIC hardware mapping

// Config bits that are part-specific for the PIC16F1829
// CONFIG1
#pragma config FOSC = INTOSC        // Oscillator Selection->INTOSC oscillator: I/O function on CLKIN pin
#pragma config WDTE = OFF            // Watchdog Timer Enable->WDT disabled
#pragma config PWRTE = OFF          // Power-up Timer Enable->PWRT disabled
#pragma config MCLRE = OFF          // MCLR Pin Function Select->MCLR/VPP pin function is MCLR
#pragma config CP = OFF                // Flash Program Memory Code Protection->Program memory code protection is disabled
#pragma config CPD = OFF              // Data Memory Code Protection->Data memory code protection is disabled
#pragma config BOREN = ON           // Brown-out Reset Enable->Brown-out Reset enabled
#pragma config CLKOUTEN = OFF    // Clock Out Enable->CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin
#pragma config IESO = OFF             // Internal/External Switchover->Internal/External Switchover mode is enabled
#pragma config FCMEN = OFF          // Fail-Safe Clock Monitor Enable->Fail-Safe Clock Monitor is enabled

// CONFIG2
#pragma config WRT = OFF            // Flash Memory Self-Write Protection->Write protection off
#pragma config PLLEN = OFF          // PLL Enable->4x PLL disabled
#pragma config STVREN = OFF       // Stack Overflow/Underflow Reset Enable->Stack Overflow or Underflow will cause a Reset
#pragma config BORV = LO            // Brown-out Reset Voltage Selection->Brown-out Reset Voltage (Vbor), low trip point selected.
#pragma config LVP = OFF            // Low-Voltage Programming Enable->Low-voltage programming disabled


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