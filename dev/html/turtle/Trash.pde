class Trash{
float trashx;
float trashy;
float trashsize;
int trashspeed;

PImage trash;

Trash(){

trashx = random(0,500);
trashspeed = 1;
trashy = 0;
trashsize = random(50,100);
trash = loadImage("trash2.png");


}

public void getTrash(){
if (cooldown != 0){
cooldown--;
}
if ((abs(trashx-x)<(trashsize/2)-3)&&(abs(trashy-y)<(trashsize/2)-3)){

if(cooldown == 0){lives= lives - 1 ; cooldown = 100;}

}
if (trashy > 500){
trashy = 0; score++;
if(trashspeed < 12){
trashspeed+=1;}
trashx = random(0,500);

}
else {trashy += trashspeed;}
image(trash, trashx, trashy,trashsize,trashsize);


}


}

class Trash2{
float trashx;
float trashy;
float trashsize;
int trashspeed;
PImage trash;

Trash2(){

trashx = random(0,500);
trashspeed = 1;
trashy = 0;
trashsize = random(50,100);
trash = loadImage("trash2.png");


}

public void getTrash2(){
if (cooldown != 0){
cooldown--;
}
if ((abs(trashx-x)< (trashsize/2)-3)&&(abs(trashy-y)< (trashsize/2)-3)){

if(cooldown == 0){lives= lives - 1 ; cooldown = 30;}

}
if (trashx > 500){
trashx = 0;
score++;
if(trashspeed < 12){
trashspeed+=1;}
trashy = random(0,500);
}

else {trashx += trashspeed;}
image(trash, trashx, trashy,trashsize,trashsize);


}


}
