import processing.sound.*;
import ddf.minim.*;


PImage turtle;
PImage ocean;
PImage menu;
boolean menupage = true;
boolean gameplaypage = false;
int cooldown = 0;
Trash trashbag;
Trash2 trashbag2;




int lives = 3;
float x = 250;
float y = 250;
float a = 255;
float b = 255;
float c = 255;
float z = 255;
int score;
SoundFile bgmusic;


public void setup(){

 
 size(500,500);
   bgmusic = new SoundFile(this,"DigitalZen.wav");
    
  bgmusic.amp(0.25);
  bgmusic.loop();
 turtle = loadImage("turtle3.png");
 ocean = loadImage("ocean2.png");
 menu = loadImage("menu2.jpg");

  noStroke();
  background(menu);
  //fill(random(0, 255), random(0, 255), random(0, 255));
  //image(turtle,x, y, 50, 50);
  
  trashbag = new Trash();
  trashbag2 = new Trash2();

};


public void draw() {
 if (menupage == true){Menu();}
 if ((gameplaypage==true)&&(lives > 0)){
 
 GamePlay();
 
 }
 if(lives <= 0){
   
   GameOver();
 
 
 }
  
}
;
