/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Device            :  PIC16F18875
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.38
        MPLAB             :  MPLAB X 3.45
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include "mcc_generated_files/mcc.h"
#include "labHeader.h"

/*
                         Main application
 */

uint8_t labNumber = 0;
uint8_t switchEvent = 0;
uint8_t labState = NOT_RUNNING;
uint8_t btnState = NOT_PRESSED;

void checkButtonS1(void);
void nextLab(void);

void main(void){
    SYSTEM_Initialize();

    while (1) {
        checkButtonS1();

        switch (labNumber) {
            case 1: HelloWorld();
                break;
            case 2: Blink();
                break;
            case 3: Rotate();
                break;
            case 4: ADC();
                break;
            case 5: VSR();
                break;
            case 6: PWM();
                break;
            case 7: Timer1();
                break;
            case 8: Interrupt();
                break;
            case 9: SleepWakeUp();
                break;
            case 10: EEPROM();
                break;

            default:;
                break;
        }

        if (switchEvent) {
            nextLab();
        }
    }
}

void checkButtonS1(void) {
    //Check if S1 is previously down (pressed).
    if (btnState == NOT_PRESSED) {
        //Check if S1 is LOW (pressed)
        if (S1_PORT == LOW) {
            btnState = PRESSED;
        }
    } else {
        //Check if S1 is high (not pressed)
        if (S1_PORT == HIGH) {
            //Change the button's state to NOT_PRESSED
            btnState = NOT_PRESSED;
            //Indicate a switch event
            switchEvent = 1;
        }
    }
}

void nextLab(void) {
    switchEvent = 0;
    labNumber++;

    if (labNumber == 11) {
        labNumber = 1;
    }
}
/**
 End of File
*/