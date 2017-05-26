/**
 *******************************************************************
 *  Lesson 7 - "Reversible"
 *
 *  This lesson combines all of the previous lessons in using the button to reverse the
 *  direction of rotation when the button is pressed. The speed of rotation is controlled
 *  using the potentiometer.
 *
 *  The program needs to keep track of rotation direction and new code needs to be added
 *  to rotate in the other direction. Lesson 5 rotates right and checks for a '1' in the carry
 *  bit to determine when to restart the sequence. In Lesson 7, the program needs to rotate
 *  both ways and check for a '1' in bit 4 of the display when rotating to the left. When the
 *  '1' shows up in bit 4 of LATC, it will be re-inserted into bit  0 .
 *
 *  The debounce routine is more in-depth in this lesson because we need to keep in mind
 *  of the scenario of the switch being held down for long periods of time. If SW1 is held
 *  down, the LEDs would change direction rapidly, making the display look like it is out of
 *  control. The above flowchart will only change direction on the first indication of a solid
 *  press and then ignore the switch until it is released and pushed again. The switch must
 *  be pressed for at least the time it takes for the program to check the switch in its loop.
 *  Since the PIC MCU is running at 500 kHz, this will seem instantaneous.
 *
 *  LEDs will rotate at a speed that is proportional to the ADC value. The switch will toggle
 *  the direction of the LEDs
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

#define SWITCH_DOWN         0
#define SWITCH_UP           1

#define LED_RIGHT           1
#define LED_LEFT            0

#define SWITCH              PORTAbits.RA2

#include <htc.h>                                                    //PIC hardware mapping
#define _XTAL_FREQ 500000                                           //Used by the XC8 delay_ms(x) macro

//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

//prototypes
unsigned char check_switch(void);
unsigned char adc(void);

void main(void) {
    unsigned char delay;
    unsigned char direction;


    direction = LED_RIGHT;                          //start from the right to left
    LATC = 0; 
    LATCbits.LATC3 = 1;                             //init
    
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs

                                                    //setup switch (SW1)
    TRISAbits.TRISA2 = 1;                           //switch as input
    ANSELAbits.ANSA2 = 0;                           //digital switch

                                                    //setup ADC
    TRISAbits.TRISA4 = 1;                           //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                           //analog
    ADCON0 = 0b00001101;                            //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                            //left justified - FOSC/8 speed - Vref is Vdd
    
    while (1) {

        delay = adc();                              //get the ADC value
        __delay_ms(5);                              //delay for AT LEAST 5ms
        while (delay-- != 0) __delay_ms(2);         //decrement the 8 MSbs of the ADC and delay 2ms for each
        if (check_switch()) 
            direction ^= 1;                         //toggle the direction
        if (direction == LED_RIGHT) {
            LATC >> = 1;                            //shift to the right by 1
            if(STATUSbits.C)                        //when the last LED is lit, restart the pattern
                LATCbits.LATC3 = 1;
        } else{
            LATC << = 1;
            if (LATCbits.LATC4 == 1)                //when the last LED is lit, restart the pattern
                LATCbits.LATC0 = 1;

        }

    }
}

unsigned char previous_state = SWITCH_UP;           //global variable - if button is held down, we don't want to keep on switching directions
unsigned char check_switch(void) {
    if (SWITCH == SWITCH_DOWN) {                    //switch is normally open to 5V ...when pressed, RA3 is connected to GND
        __delay_ms(5);                              //debounce by delaying and checking if switch is still pressed
        if(previous_state == SWITCH_DOWN && SWITCH == SWITCH_DOWN)
            return 0;                               //don't toggle
        else if (SWITCH == SWITCH_DOWN) {           //check if still down
            previous_state = SWITCH_DOWN;
            return 1;                               //reverse the LEDs
        } else{
            previous_state =SWITCH_UP;              //switch not properly held down
            return 0;                               //don't reverse
        }
    } else{
        previous_state = SWITCH_UP;                 //switch not pressed
        return 0;                                   //don't reverse
    }
}

unsigned char adc(void) {
    __delay_us(5);                                  //wait for ADC charging cap to settle
    GO = 1;
    while (GO) continue;                            //wait for conversion to be finished

    return ADRESH;                                  //grab the top 8 MSbs

}