
# BlinkM Library

Muthanna A. Attyah (June 2017)

Please feel free to copy and use code.

Device data sheet https://thingm.com/fileadmin/thingm/downloads/BlinkM_datasheet.pdf

How the BlinkM is connected to Curiosity HPC Board:
 
    BlankM  MikroBus    Curiosity HPC   Remarks
-------------------------------------------------------------------
    I2C C   SCL         RC3             I2C clock
    I2C D   SDA         RC4             I2C data
    PWR-    GND         GND             Ground
    PWR+    +5V         +5V             Power supply
-------------------------------------------------------------------
 
 * RC3 & RC4 must have pull-up resistors enabled since BlinkM does not have pull-up resistors on its module.

# BlinkM connected to mikroBUS slot 1 on Microchip Curiosity HPC board.
<p align="center"> 
<img src="images/1.jpg">
</p>

# UART Cable connected to GND & RC6 on Microchip Curiosity HPC board
<p align="center"> 
<img src="images/2.jpg">
</p>

# BlinkM Module Layout
<p align="center"> 
<img src="images/3.jpg">
</p>

# BlinkM Coammands List
<p align="center"> 
<img src="images/4.jpg">
</p>

# UART Console Screenshot
<p align="center"> 
<img src="images/5.jpg">
</p>