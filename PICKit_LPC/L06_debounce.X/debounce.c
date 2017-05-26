/**
 *******************************************************************
 * Lesson 6 - "Debounce"
 *
 * This lesson uses a simple software delay routine to avoid the initial noise on the switch
 * pin. The code will delay for only 5 ms, but should overcome most of the noise. The
 * required delay amount differs with the switch being used. Some switches are worse
 * than others.

 * This lesson also introduces the  #define preprocessing symbol in both 'C' and assembly.
 * Hard coding pin locations is bad practice. Values that may be changed in the future
 * should always be defined once in preprocessing. Imagine if another user wanted to use
 * these lessons in a different PIC device and all of the pins changed! This would require
 * going into the code and finding every instance of any pin reference.

 * When the switch is held down, DS1 will be lit. When the switch is not held down, all
 * LEDs are OFF.
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

#define DOWN        0
#define UP          1
#define SWITCH      PORTAbits.RA2
#define LED         LATCbits.LATC0

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
    OSCCON = 0b00111000;                              //500KHz clock speed
    TRISC = 0;                                        //all LED pins are outputs
    LATC = 0;                                         //start with all LEDs OFF
    
                                                      //setup switch (SW1)
    TRISAbits.TRISA2 = 1;                             //switch as input
    ANSELAbits.ANSA2 = 0;                             //digital switch

    while (1) {
        if (SWITCH == DOWN) {                         //switch is normally open to 5V ...when pressed, RA3 is connected to GND
            __delay_ms(10);                           //debounce by delaying and checking if switch is still pressed
            if (SWITCH == DOWN) {                     //check if still down
                LED = 1;                              //turn on DS1
            }
        }
        else
            LED = 0;                                  //constantly turn DS1 off if it is not pressed
    }

}