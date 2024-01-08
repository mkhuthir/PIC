

#include "mcc_generated_files/mcc.h"
#include "notes.h"

/*
 * We want to be able to access the Upper/High/Low bytes in the 24-bit integer
 * when we set our NCO. So we define this union to simplify that process
 */
typedef union {
    uint24_t word;
    struct {
      uint8_t l_byte;
      uint8_t h_byte;
      uint8_t u_byte;
   };
} ncoinc_t;

/*
 * Define a struct which determines what a note should contain
 * Pitch and length
 */
typedef struct {
    ncoinc_t pitch;
    uint8_t length;
} note_t;

/*
 * Define a struct which will hold the aspects of a song
 * Name, melody, song length, and tempo
 */
typedef struct {
    uint8_t* name;
    note_t*  melody;
    uint16_t length;
    uint16_t tempo;
} song_t;

ncoinc_t rest = 0x000000;

void SetNCOFreq(ncoinc_t value){
   NCO1INCU = value.u_byte;
   NCO1INCH = value.h_byte;
   NCO1INCL = value.l_byte;
}

void delay(uint8_t noteLength){      //function to set length of notes without using the delay function
    do {
        printf(".");
        PIR0bits.TMR0IF = 0; // Clear the overflow flag
        TMR0_StartTimer();
        while(!TMR0_HasOverflowOccured()) {};   //wait till the Timer has overflowed after the given period
    } while(--noteLength > 0);
}

/*
 * Let's define some of our melodies
 */
note_t jingle_jangle[] = {
    {T_E5, L_Q}, {T_E5, L_Q}, {T_E5, L_H},
    {T_E5, L_Q}, {T_E5, L_Q}, {T_E5, L_H},
    {T_E5, L_Q}, {T_G5, L_Q}, {T_C5, L_Q_D},{T_D5, L_E},{T_E5, L_W},
    
    {T_F5, L_Q}, {T_F5, L_Q}, {T_F5, L_Q},
    {T_F5, L_Q},{T_F5, L_Q},{T_E5, L_Q},{T_E5, L_Q},{T_E5, L_Q},
    {T_D5, L_Q},{T_D5, L_Q},{T_E5, L_Q},{T_E5, L_Q},{T_D5, L_H},{T_G5, L_H},
    
    {T_E5, L_Q}, {T_E5, L_Q}, {T_E5, L_H},
    {T_E5, L_Q}, {T_E5, L_Q}, {T_E5, L_H},
    {T_E5, L_Q}, {T_G5, L_Q}, {T_C5, L_Q_D},{T_D5, L_E},{T_E5, L_W},
    
    {T_F5, L_Q}, {T_F5, L_Q}, {T_F5, L_Q},
    {T_F5, L_Q},{T_F5, L_Q},{T_E5, L_Q},{T_E5, L_Q},{T_E5, L_Q},
    {T_G5, L_Q},{T_G5, L_Q},{T_F5, L_Q},{T_D5, L_Q},{T_C5, L_W}
};
note_t winter_is_coming[] = {
    {T_G5, L_H_d}, {T_C5, L_H_d},
    {T_DS5, L_E},{T_F5, L_E},{T_G5, L_H},{T_C5, L_H},
    {T_DS5, L_E},{T_F5, L_E},{T_D5, L_H_d},
    {T_REST, L_H_d},
    
    {T_F5, L_H_d}, {T_AS4, L_H_d},
    {T_D5, L_E},{T_DS5, L_E},{T_F5, L_H},{T_AS4, L_H},
    {T_DS5, L_E},{T_D5, L_E},{T_C5, L_H_d}
    
};
note_t sleepy_zelda[] = {
    {T_B5, L_H}, {T_D6, L_Q}, {T_A5, L_H},{T_G5, L_E}, {T_A5, L_E}, 
    {T_B5, L_H}, {T_D6, L_Q}, {T_A5, L_H_d},
    {T_B5, L_H}, {T_D6, L_Q}, {T_A6, L_H}, {T_G6, L_Q},
    {T_D6, L_H}, {T_C6, L_E}, {T_B5, L_E}, {T_A5, L_H_d}
};
note_t plumber_down[] = {
	{T_C4, L_E}, {T_C5, L_E}, {T_A3, L_E}, {T_A4, L_E},
	{T_AS3, L_E}, {T_AS4, L_E}, 
	{T_REST, L_H_d},

	{T_C4, L_E}, {T_C5, L_E}, {T_A3, L_E}, {T_A4, L_E},
	{T_AS3, L_E}, {T_AS4, L_E}, 
	{T_REST, L_H_d},

	{T_F3, L_E}, {T_F4, L_E}, {T_D3, L_E}, {T_D4, L_E},
	{T_DS3, L_E}, {T_DS4, L_E}, 
	{T_REST, L_H_d},

	{T_F3, L_E}, {T_F4, L_E}, {T_D3, L_E}, {T_D4, L_E},
	{T_DS3, L_E}, {T_DS4, L_E}, 
	{T_REST, L_Q_D},

	{T_DS4, L_S}, {T_CS4, L_E}, {T_D4, L_Q},
	{T_CS4, L_Q}, {T_DS4, L_Q},
	{T_DS4, L_Q}, {T_GS3, L_Q},
	{T_G3, L_Q}, {T_CS4, L_Q},
	{T_C4, L_E}, {T_FS4, L_E}, {T_F4, L_E}, {T_E3, L_E}, {T_AS4, L_E}, {T_A4, L_E},
	{T_GS4, L_E}, {T_DS4, L_E}, {T_B3, L_E},
	{T_AS3, L_E}, {T_A3, L_E}, {T_GS3, L_E},

};
note_t bhpc[] = {
    {T_A5, L_E}, {T_REST, L_E},{T_C6, L_E_D},
    {T_A5, L_E}, {T_A5, L_S}, {T_D6, L_E}, {T_A5, L_E}, {T_G5, L_E}, 
    {T_A5, L_E}, {T_REST, L_E},{T_E6, L_E_D},
    {T_A5, L_E}, {T_A5, L_S}, {T_F6, L_E}, {T_E6, L_E}, {T_C6, L_E}, 
    {T_A5, L_E}, {T_E6, L_E}, {T_A6, L_E}, {T_A5, L_S}, {T_G5, L_E},
    {T_G5, L_S}, {T_E5, L_E}, {T_B5, L_E}, {T_A5, L_Q_D}
};

// This is the array which holds our songs
song_t songs[] = {
    {(uint8_t *)"ASOIAF", winter_is_coming, sizeof(winter_is_coming)/sizeof(note_t), 180}, // Put a song here
    {(uint8_t *)"Bells", jingle_jangle, sizeof(jingle_jangle)/sizeof(note_t), 120}, // How about another one
    {(uint8_t *)"Lullaby", sleepy_zelda, sizeof(sleepy_zelda)/sizeof(note_t), 90}, // Make it slow
    {(uint8_t *)"SMB", plumber_down, sizeof(plumber_down)/sizeof(note_t), 240}, // Make it fast
    {(uint8_t *)"SMB2", plumber_down, sizeof(plumber_down)/sizeof(note_t), 120}, // Make the fast one slow!
    {(uint8_t *)"A. Foley", bhpc, sizeof(bhpc)/sizeof(note_t), 120} // Make one more just to be cool!
};

/**
 * Handle our note which was passed, playing the pitch and waiting the 
 * length of the note. We inject a rest at the end of this to give the 
 * notes some space
 * @param note
 */
void playNote(note_t note){
    SetNCOFreq(note.pitch);
    delay(note.length);
    SetNCOFreq(rest);
    __delay_ms(10);
}

/**
 * Set the period of the timer based on the passed in tempo
 * 
 * @param tempo
 */
void setTempo(int tempo){
    uint24_t tempo_ms = ((60*100/tempo)*10)/4;
    uint8_t tempo_period = (uint8_t) (tempo_ms / 1.024);
    TMR0_Load8bitPeriod(tempo_period);
}

void main(void)
{
    song_t* currSong = &songs[0];
        
    // initialize the device
    SYSTEM_Initialize();
    
    // Make sure we don't start off blaring some note...
    SetNCOFreq(rest);
    // Loop FOREVER!!!!!
    while (1)
    {
        if(SWITCH_GetValue() == 0){
            uint8_t i;
            // Let's play our song!
            
            // Set the tempo first...
            setTempo(currSong->tempo);
            // Show some information about the song...
            printf("\n\rPlaying %s:\n\rTempo = %i", currSong->name, currSong->tempo);
            // Now play the melody
            for (i = 0; i < currSong->length; i ++){
                // Give some indication of what we're doing...for debugging
                printf("\n\r\t%4i", currSong->melody[i].pitch);
                playNote(currSong->melody[i]);
            }   
        } else{
            // While we aren't playing the song, pick which song we'll play
            uint16_t result = ADCC_GetSingleConversion(POT);
            uint16_t songResultConv = 1024 / (sizeof(songs)/sizeof(song_t));
            uint8_t songNum = result/(songResultConv+1);
            currSong = &songs[songNum];
            // Make some blinky lights...
            songNum++;
            if(songNum &  0x01){ LED0_SetHigh(); } else {LED0_SetLow();}
            if(songNum &  0x02){ LED1_SetHigh(); } else {LED1_SetLow();}
            if(songNum &  0x04){ LED2_SetHigh(); } else {LED2_SetLow();}
            if(songNum &  0x08){ LED3_SetHigh(); } else {LED3_SetLow();}
        }
    }
}
/**
 End of File
*/