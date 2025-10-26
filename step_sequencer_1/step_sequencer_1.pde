// stepper 1.0
// owi mahn 25.10.2023 
// owi@owimahn.de

import processing.sound.*;

// ----------------------------------------------------
int position = 0;
int bpm = 125;
int[] kick =  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[] bass =  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[] hat =   {0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
                0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0,
                0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
                0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0};
int[] lead_1 =   {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[] lead_2 =   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[] african_perc_1 =   {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
                1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
SoundFile sound_kick;
SoundFile sound_bass;
SoundFile sound_hat;
SoundFile sound_lead_1;
SoundFile sound_lead_2;
SoundFile sound_african_perc_1;

// ----------------------------------------------------
void setup() {
  
  size(3440, 1080);
  frameRate(bpm/60*4);
  sound_kick = new SoundFile(this, "kick_1bar.wav");
  sound_bass = new SoundFile(this, "bass_1bar.wav");
  sound_hat = new SoundFile(this, "hat.wav");
  sound_lead_1 = new SoundFile(this, "lead_1_2bars.wav");
  sound_lead_2 = new SoundFile(this, "lead_2_2bars.wav");
  sound_african_perc_1 = new SoundFile(this, "african_perc_1_0,5bar.wav");
}

// ----------------------------------------------------
void draw() {
  
  background(160);
  
  position++;
  if(position>=64) position = 0;

  // kick 
  for(int i=0; i<64; i++) {
   
    if(i==position) {
      
      stroke(255, 120, 20);
      fill(255);
      rect(47+i*64 -2, 40-2, 26+4, 26+4, 6+2);
    }
    
    if(kick[i]==1) {
      
      fill(200);
      if(position==i) {
        sound_kick.stop();
        sound_kick.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 40, 26, 26, 6);
  }
  
  // hat
  for(int i=0; i<64; i++) { 
   
    if(i==position) {
      
      stroke(255);
      fill(120);
      rect(47+i*64 -2, 80-2, 26+4, 26+4, 6+2);
    }
    
    if(hat[i]==1) {
      
      fill(200);
      if(position==i) {
        sound_hat.stop();
        sound_hat.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 80, 26, 26, 6);
  }
  // bass
  for(int i=0; i<64; i++) {
   
    if(i==position) {
      
      stroke(255);
      fill(255);
      rect(47+i*64 -2, 120-2, 26+4, 26+4, 6+2);
    }
    
    if(bass[i]==1) {
      
      fill(200, 200, 200);
      if(position==i) {
        sound_bass.stop();
        sound_bass.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 120, 26, 26, 6);
  }
  // lead 1
  for(int i=0; i<64; i++) {
   
    if(i==position) {
      
      stroke(255);
      fill(255);
      rect(47+i*64 -2, 160-2, 26+4, 26+4, 6+2);
    }
    
    if(lead_1[i]==1) {
      
      fill(200);
      if(position==i) {
        sound_lead_1.stop();
        sound_lead_1.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 160, 26, 26, 6);
  }
  // lead 2
  for(int i=0; i<64; i++) {
   
    if(i==position) {
      
      stroke(255);
      fill(255);
      rect(47+i*64 -2, 200-2, 26+4, 26+4, 6+2);
    }
    
    if(lead_2[i]==1) {
      
      fill(200);
      if(position==i) {
        sound_lead_2.stop();
        sound_lead_2.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 200, 26, 26, 6);
  }
  // african_perc_1
  for(int i=0; i<64; i++) {
   
    if(i==position) {
      
      stroke(255);
      fill(255);
      rect(47+i*64 -2, 200-2, 26+4, 26+4, 6+2);
    }
    
    if(african_perc_1[i]==1) {
      
      fill(200);
      if(position==i) {
        sound_african_perc_1.stop();
        sound_african_perc_1.play();
      }
    }
    else {
      
      fill(60);
    }
    stroke(200);
    rect(47+i*64, 200, 26, 26, 6);
  }
}
