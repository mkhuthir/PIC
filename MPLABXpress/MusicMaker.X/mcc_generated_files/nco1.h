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

#ifndef _NCO1_H
#define _NCO1_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: NCO1 Module APIs
*/

/**
  @Summary
    Initializes the NCO1_Initialize

  @Description
    This routine initializes the NCO1_Initialize
    This routine must be called before any other NCO1 routine is called.
    This routine should only be called once during system initialization.

  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment
    

 @Example
    <code>
    NCO1_Initialize();
    </code>
 */
void NCO1_Initialize(void);

/**
  @Summary
    Determines if output status is high or low.

  @Description
    This routine returns the NCO1 output status.
    high - Indicates output is high
    low - Indicates output is low

  @Preconditions
    NCO1_Initialize() function should have been called
	before calling this function.

  @Param
    None

  @Returns
    high - Indicates output is high
    low - Indicates output is low

  @Example
    <code>
    NCO1_Initialize();
    if(NCO1_GetOutputStatus())
    {
        // User code..
    }
    else
    {
         // User code..
    }
    </code>
 */
bool NCO1_GetOutputStatus(void);

#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif  //_NCO1_H
/**
 End of File
*/


