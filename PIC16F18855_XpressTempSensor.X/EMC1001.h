// EMC1001 Address
#define EMC1001_ADDRESS     0x38   // slave device address  (EMC1001 ADDR/THERM Pull-up Resistor = 20KOhm+/-5%)

// EMC1001 registers
#define Reg_TMP_HB      0x00    // temperature value high byte 
#define Reg_STATUS      0x01    // Status    
#define Reg_TMP_LB      0x02    // low byte containing 1/4 deg fraction
#define Reg_Config      0x03    // Configuration
#define Reg_Cnv_Rate    0x04    // Conversion Rate 
#define Reg_THL_HB      0x05    // Temperature High Limit High Byte
#define Reg_THL_LB      0x06    // Temperature High Limit Low Byte
#define Reg_TLL_HB      0x07    // Temperature Low Limit High Byte
#define Reg_TLL_LB      0x08    // Temperature Low Limit Low Byte
#define Reg_One_Sht     0x0f    // One-Shot
#define Reg_THM_LMT     0x20    // THERM Limit
#define Reg_THM_HYS     0x21    // THERM Hysteresis
#define Reg_SMB_TO      0x22    // SMBus Timeout Enable
#define Reg_Prd_ID      0xfd    // Product ID Register
#define Reg_Mnf_ID      0xfe    // Manufacture ID
#define Reg_Rev_No      0xff    // Revision Number

//Reads 1 byte from EMC1001 using SMBus protocol
uint8_t EMC1001_Read(uint8_t reg, uint8_t *pData);

//Prints EMC1001 information read from its registers
void EMC1001_PrintInfo(void);

//Prints current temprture value read from EMC1001
void EMC1001_PrintTemp(void);


