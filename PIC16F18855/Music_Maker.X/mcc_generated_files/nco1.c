/**
  NCO1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    nco1.c

  @Summary
    This is the generated driver implementation file for the NCO1 driver using MPLAB(c) Code Configurator

  @Description
    This header file provides implementations for driver APIs for NCO1.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15
        Device            :  PIC16F18855
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.40
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

/**
  Section: Included Files
*/

#include <xc.h>
#include "nco1.h"

/**
  Section: NCO Module APIs
*/

void NCO1_Initialize (void)
{
    // Set the NCO to the options selected in the GUI
    // N1EN disabled; N1POL active_lo; N1PFM FDC_mode; 
    NCO1CON = 0x00;
    // N1CKS FOSC; N1PWS 1_clk; 
    NCO1CLK = 0x00;
    // 
    NCO1ACCU = 0x00;
    // 
    NCO1ACCH = 0x00;
    
    NCO1INCU = 0x00;
    NCO1INCH = 0x03;
    NCO1INCL = 0x9B;
    // Enable the NCO module
    NCO1CONbits.N1EN = 1;
   
}

bool NCO1_GetOutputStatus(void)
{
    // Return output status on accumulator over flow
    return (NCO1CONbits.N1OUT);
}
/**
 End of File
*/

