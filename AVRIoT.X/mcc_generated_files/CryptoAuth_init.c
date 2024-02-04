/*

 * \file
 * \brief CryptoAuthLib Basic API methods - a simple crypto authentication API.
 * These methods manage a global ATCADevice object behind the scenes. They also
 * manage the wake/idle state transitions so callers don't need to.
 *
 * \copyright (c) 2015-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT,
 * SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE
 * OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
 * MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
 * FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL
 * LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED
 * THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR
 * THIS SOFTWARE.
*/

#include "CryptoAuth_init.h"

struct atca_command  _gmyCommand;
struct atca_iface    _gmyIface;
struct atca_device   _gMyDevice = {&_gmyCommand, &_gmyIface};

ATCAIfaceCfg secureCfg = {
    .iface_type             =   ATCA_I2C_IFACE,
    .devtype                =   ATECC608A,
    .atcai2c.slave_address  =   0xB0,
    .atcai2c.bus            =   2,
    .atcai2c.baud           =   100000,
    .wake_delay             =   1560,
    .rx_retries             =   20
};

bool CryptoAuth_Initialize(void)
{
    uint8_t calInitialzeStatus; 
    calInitialzeStatus = atcab_init(&secureCfg);
    if (calInitialzeStatus != ATCA_SUCCESS)
    {
       return false;
    } 
    else 
    {
       atcab_lock_data_slot(0);
       return true;
    }
}
