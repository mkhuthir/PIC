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
#include "FLASH2_driver.h"
#include "../spi1_master.h"
#include "SST26VF064B.h"

/**
  Section: Macro Declarations
*/

#define START_PAGE_ADDRESS      0x010000
#define END_PAGE_ADDRESS        0x7FFFFF
#define FLASH_PAGE_SIZE         256UL

void FLASH2_Initialize()
{
    SST26VF064B_CS_High();  //CS high
    SST26VF064B_WP_High();  //WP high
    SST26VF064B_Hold(1);  //HLD high

    spi1_open(FLASH2);
}

int FLASH2_GetDeviceInfo( Flash2_info_t* info )
{
    if(info == NULL) return -1;

    while( SST26VF064B_Busy() );

    SST26VF064B_CS_Low();
    SST26VF064B_JEDECID_Cmd();
    SST26VF064B_SPI_ReadBuffer( (uint8_t*)info, 3 );
    SST26VF064B_CS_High();

    return 0;
}

int FLASH2_Write( uint32_t address, uint8_t *buffer, uint32_t data_count )
{
    if(buffer == NULL) return -1;
    
    uint32_t beginAddress = address;
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_PageProgram_Cmd();
    
    if( data_count <= FLASH_PAGE_SIZE )
    {
        SST26VF064B_WriteAddress( address );
        SST26VF064B_SPI_WriteBuffer( buffer, data_count );
        SST26VF064B_CS_High();
    }
    else
    {
        uint8_t i;
        uint8_t repeat = data_count / FLASH_PAGE_SIZE;
        uint8_t repeat_over = data_count % FLASH_PAGE_SIZE;

        for ( i = 0; i < repeat; i++ )
        {
            while( SST26VF064B_Busy() );
            SST26VF064B_WriteEnable();
            SST26VF064B_CS_Low();
            SST26VF064B_PageProgram_Cmd();
            SST26VF064B_WriteAddress( address + ( i * FLASH_PAGE_SIZE ) );
            SST26VF064B_SPI_WriteBuffer( buffer + ( i * FLASH_PAGE_SIZE ), FLASH_PAGE_SIZE );
            SST26VF064B_CS_High();

        }
        if ( repeat_over )
        {
            address = beginAddress + ( repeat * FLASH_PAGE_SIZE );
            while( SST26VF064B_Busy() );
            SST26VF064B_WriteEnable();
            SST26VF064B_CS_Low();
            SST26VF064B_PageProgram_Cmd();
            SST26VF064B_WriteAddress( address );
            SST26VF064B_SPI_WriteBuffer( buffer + ( repeat * FLASH_PAGE_SIZE ),repeat_over );
            SST26VF064B_CS_High();
        }
    }
    
    return 0;
    
}

uint8_t FLASH2_ReadByte( uint8_t buffer )
{
    buffer = SST26VF064B_SPI_ReadByte( 0 );

    return buffer;

}

void FLASH2_Read( uint32_t address, uint8_t *buffer, uint32_t data_count )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_CS_Low();
    SST26VF064B_Read_Cmd( );
    SST26VF064B_WriteAddress( address );
    SST26VF064B_SPI_ReadBuffer( buffer, data_count );
    SST26VF064B_CS_High();
}

void FLASH2_ChipErase( void )
{
    SST26VF064B_ChipErase();
}
