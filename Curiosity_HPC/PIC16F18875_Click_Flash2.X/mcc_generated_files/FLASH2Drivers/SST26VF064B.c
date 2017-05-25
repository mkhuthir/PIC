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
#include "SST26VF064B.h"
#include "../spi1_master.h"

typedef enum
{
    CMD_NOP         =       0x00, /**< No Operation */
    CMD_RSTEN       =       0x66, /**< Reset Enable */
    CMD_RST         =       0x99, /**< Reset Memory */
    CMD_EQIO        =       0x38, /**< Enable Quad I/O */
    CMD_RSTQIO      =       0xFF, /**< Reset Quad I/O */
    CMD_RDSR        =       0x05, /**< Read Status Register */
    CMD_WRSR        =       0x01, /**< Write Status Register */
    CMD_RDCR        =       0x35, /**< Read Configuration Register */
    CMD_READ        =       0x03, /**< Read Memory */
    CMD_HS_READ     =       0x0B, /**< Read Memory at Higher Speed */
    CMD_SQOR        =       0x6B, /**< SPI Quad Output Read */
    CMD_SQIOR       =       0xEB, /**< SPI Quad I/O Read */
    CMD_SDOR        =       0x3B, /**< SPI Dual Output Read */
    CMD_SDIOR       =       0xBB, /**< SPI Dual I/O Read */
    CMD_SB          =       0xC0, /**< Set Burst Length */
    CMD_RBSQI       =       0x0C, /**< SQI Read Burst with Wrap */
    CMD_RBSPI       =       0xEC, /**< SPI Read Burst with Wrap */
    CMD_JEDECID     =       0x9F, /**< JEDEC-ID Read */
    CMD_QUAD_JID    =       0xAF, /**< Quad I/O J-ID read */
    CMD_SFDP        =       0x5A, /**< Serial Flash Discoverable Parameters */
    CMD_WREN        =       0x06, /**< Write Enable */
    CMD_WRDI        =       0x04, /**< Write Disable */
    CMD_SE          =       0x20, /**< Erase 4 KBytes of Memory Array */
    CMD_BE          =       0xD8, /**< Erase 64, 32 or 8 KBytes of Memory Array */
    CMD_CE          =       0xC7, /**< Erase Full Array */
    CMD_PP          =       0x02, /**< Page Program */
    CMD_SPI_QUAD    =       0x32, /**< SQI Quad Page Program */
    CMD_WRSU        =       0xB0, /**< Suspends Program / Erase */
    CMD_WRRE        =       0x30, /**< Resumes Program / Erase */
    CMD_RBPR        =       0x72, /**< Read Block-Protection Register */
    CMD_WBPR        =       0x42, /**< Write Block-Protection Register */
    CMD_LBPR        =       0x8D, /**< Lock Down Block-Protection Register */
    CMD_NVWLDR      =       0xE8, /**< Non-Volatile Write Lock-Down Register */
    CMD_ULBPR       =       0x98, /**< Global Block Protection Unlock */
    CMD_RSID        =       0x88, /**< Read Security ID */
    CMD_PSID        =       0xA5, /**< Program User Security ID Area */
    CMD_LSID        =       0x85, /**< Lockout Security ID Programming */
}SST26VF064B_cmd_t;            

typedef enum
{
    STATUS_WEL  =   0x02, /**< Write-enable latch status 1 = device is write-enabled
                            0 = device is not write-enabled */
    STATUS_WSE  =   0x04, /**< Write suspend-erase status 1 = erase suspended 0 =
                            erase is not suspended */
    STATUS_WSP  =   0x08, /**< Write suspend-program status 1 = program suspended
                            0 = program is not suspended */
    STATUS_WPLD =   0x10, /**< Write protections lock-down status 1 = write
                            protection lock-down enabled 0 = write protection
                            lock-down disabled */
    STATUS_SEC  =   0x20, /**< Security ID status 1 = security ID space locked
                            0 = security ID space not locked */
    STATUS_RES  =   0x40, /**< Reserved for future use */
    STATUS_BUSY =   0x80, /**< Write operation status 1 = write in progress 0 =
                            no operation in progress */
}SST26VF064B_status_t;

void SST26VF064B_CS_Low(){
    LATAbits.LATA3  = 0;
}

void SST26VF064B_CS_High(){
    LATAbits.LATA3  = 1;
}

void SST26VF064B_WP_Low(){
    LATCbits.LATC2 = 0;
}

void SST26VF064B_WP_High(){
    LATCbits.LATC2 = 1;
}

void SST26VF064B_Hold( bool state )
{
    if( state )
        LATDbits.LATD0 = 1;
    else
        LATDbits.LATD0 = 0;
}

void SST26VF064B_Command( SST26VF064B_cmd_t command )
{
    spi1_exchangeByte(command);

    return;
}

uint8_t SST26VF064B_Busy()
{
    uint8_t temp;

    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_RDSR );
    temp = SST26VF064B_SPI_ReadByte( 0 );
    SST26VF064B_CS_High();
    temp &= STATUS_BUSY;
    return temp;
}

uint8_t SST26VF064B_SPI_ReadByte( uint8_t value )
{
    value = spi1_exchangeByte( 0 );

    return value;
}

void SST26VF064B_SPI_WriteByte( uint8_t value )
{
    spi1_exchangeByte( value );

    return;
}

void SST26VF064B_SPI_ReadBuffer( uint8_t *buffer, uint16_t count )
{
    while( count-- )
    {   
        *( buffer++ ) = spi1_exchangeByte( 0x00 );
    }
    
    return;
}

void SST26VF064B_SPI_WriteBuffer( uint8_t *buffer, uint16_t count )
{
    while( count-- )
    {
        spi1_exchangeByte( *( buffer++ ) );          
    }

    return;
}

void SST26VF064B_Reset( void )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_RSTEN );
    SST26VF064B_CS_High();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_RST );
    SST26VF064B_CS_High();

    return;
}

void SST26VF064B_WriteAddress( uint32_t address )
{    
    uint8_t addr_hi = address >> 16;
    uint8_t addr_mi = ( address & 0x00FF00 ) >> 8;
    uint8_t addr_lo = ( address & 0x0000FF );

    spi1_exchangeByte( addr_hi );
    spi1_exchangeByte( addr_mi );
    spi1_exchangeByte( addr_lo );
    
    return;
}

void SST26VF064B_SectorErase( uint32_t address )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_SE );
    SST26VF064B_WriteAddress( address );
    SST26VF064B_CS_High();

}

void SST26VF064B_BlockErase( uint32_t address )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_BE );
    SST26VF064B_WriteAddress( address );
    SST26VF064B_CS_High();

}

void SST26VF064B_ChipErase( void )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_CE );
    SST26VF064B_CS_High();
    return;
}

void SST26VF064B_Lock_BPR( void )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_LBPR );
    SST26VF064B_CS_High();

    return;
}

void SST26VF064B_GlobalBlockUnlock( void )
{
    while( SST26VF064B_Busy() );

    SST26VF064B_WriteEnable();
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_ULBPR );
    SST26VF064B_CS_High();

    return;
}

void SST26VF064B_WriteEnable( void )
{
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_WREN );
    SST26VF064B_CS_High();

    return;
}

void SST26VF064B_WriteDisable( void )
{
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_WRDI );
    SST26VF064B_CS_High();
}

void SST26VF064B_WriteSuspend( void )
{
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_WRSU );
    SST26VF064B_CS_High();
}

void SST26VF064B_WriteResume( void )
{
    SST26VF064B_CS_Low();
    SST26VF064B_Command( CMD_WRRE );
    SST26VF064B_CS_High();
}

void SST26VF064B_PageProgram_Cmd( void )
{
    SST26VF064B_Command( CMD_PP );
}

void SST26VF064B_Read_Cmd( void )
{
    SST26VF064B_Command( CMD_READ );
}

void SST26VF064B_JEDECID_Cmd( void )
{
    SST26VF064B_Command( CMD_JEDECID );
}





