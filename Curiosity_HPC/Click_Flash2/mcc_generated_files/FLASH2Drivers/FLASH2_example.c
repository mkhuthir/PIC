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

#include <xc.h>
#include <stdint.h>
#include "FLASH2_driver.h"
#include "FLASH2_example.h"

uint8_t page_buffer[650];

void FLASH2_example(void){
    Flash2_info_t myInfo;
    uint8_t buffer[4]                   = {15,20,25,30};
    uint32_t count                      = 4;
    uint32_t address                    = 0x010000;
    uint8_t receive_buffer[4];
    
    for(int i =0;i<651;i++)
    {
        page_buffer[i] = 'x';
    }
    
    FLASH2_GetDeviceInfo(&myInfo);

    FLASH2_ChipErase();

    FLASH2_Write( address, buffer, count );
    FLASH2_Read( address, receive_buffer, count );

    FLASH2_ChipErase();

    FLASH2_Write(address,page_buffer,650);
    for(int i =0;i<651;i++)
    {
        page_buffer[i] = 'a';
    }

    FLASH2_Read( address, page_buffer, 650 );

}
