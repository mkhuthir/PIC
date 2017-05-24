// EMC1001 Library
// Muthanna A. Attyah (April 2017)
// Please feel free to copy and use code.
// Device datasheet http://ww1.microchip.com/downloads/en/DeviceDoc/20005411A.pdf

#ifndef EMC1001_H
#define EMC1001_H

#ifndef MCC_H
#include "mcc_generated_files/mcc.h"
#endif

//-------------------------------------------------------------------------------------
// EMC1001 Address
#define EMC1001_ADDRESS 0x38    // slave device address  (EMC1001 ADDR/THERM Pull-up Resistor = 20KOhm+/-5%)
#define RETRY_MAX       100     // Maximum retries before return with a fail status.
#define Enable  true            // used in Enable/Disable functions
#define Disable false           // used in Enable/Disable functions

// EMC1001 registers
#define Reg_TMP_HB      0x00    // R temperature value high byte 
#define Reg_STATUS      0x01    // RC Status     
#define Reg_TMP_LB      0x02    // R low byte containing 1/4 deg fraction
#define Reg_Config      0x03    // R/W Configuration
#define Reg_Cnv_Rate    0x04    // R/W Conversion Rate 
#define Reg_THL_HB      0x05    // R/W Temperature High Limit High Byte
#define Reg_THL_LB      0x06    // R/W Temperature High Limit Low Byte
#define Reg_TLL_HB      0x07    // R/W Temperature Low Limit High Byte
#define Reg_TLL_LB      0x08    // R/W Temperature Low Limit Low Byte
#define Reg_One_Sht     0x0f    // R One-Shot
#define Reg_THM_LMT     0x20    // R/W THERM Limit
#define Reg_THM_HYS     0x21    // R/W THERM Hysteresis
#define Reg_SMB_TO      0x22    // R/W SMBus Timeout Enable
#define Reg_Prd_ID      0xfd    // R Product ID Register
#define Reg_Mnf_ID      0xfe    // R Manufacture ID
#define Reg_Rev_No      0xff    // R Revision Number

//-------------------------------------------------------------------------------------
// functions
//-------------------------------------------------------------------------------------

bool EMC1001_Read(uint8_t reg, uint8_t *pData); // Reads 1 byte from EMC1001 using SMBus protocol
bool EMC1001_Write(uint8_t reg, uint8_t data);  // Writes 1 byte to EMC1001 using SMBus protocol

bool EMC1001_SetConversionRate(uint8_t data);           // Set the Conversion Rate
bool EMC1001_SetTempHighLimit(uint8_t HB,uint8_t LB);   // Set the Temperature High Limit (2 bytes)
bool EMC1001_SetTempLowLimit(uint8_t HB,uint8_t LB);    // Set the Temperature Low Limit (2 bytes)
bool EMC1001_SetThermLimit(uint8_t data);               // Set the THERM Limit
bool EMC1001_SetThermHysteresis(uint8_t data);          // Set the THERM Hysteresis
bool EMC1001_MASK1(bool enable);                        // When MASK is disabled ALERT is enabled; any out-of-limit condition will assert the signaled pin (default) 
bool EMC1001_StandbyMode(bool enable);                  // Enable/Disable Standby Mode
bool EMC1001_THERM2(bool enable);                       // When enabled the ALERT/THERM2 pin acts as the THERM2 signal and Bit 7 is ignored. otherwise pin acts as the ALERT (SMBALERT#) signal (default) 
bool EMC1001_OneShot(void);                             // initiates a conversion and comparison cycle when in standby mode.
bool EMC1001_SMBusTimeout(bool enable);                 // Enable/Disable SMBus Timeout

void EMC1001_PrintInfo(void);                           // Prints EMC1001 information read from its registers
void EMC1001_PrintTemp(void);                           // Prints current temprture value read from EMC1001

//-------------------------------------------------------------------------------------

#endif
