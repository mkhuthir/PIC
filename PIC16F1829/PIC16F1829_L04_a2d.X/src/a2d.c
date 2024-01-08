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

#define _XTAL_FREQ 500000                           //Used by the XC8 delay_ms(x) macro

#include <htc.h>                            //PIC hardware mapping

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