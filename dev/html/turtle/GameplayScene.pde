public void GamePlay(){

if (z == 255) { 
    z = random(0, 255);
  }; 
  //if ((x % 30 == 0)||(y % 30 == 0)) { 
  //  a = random(0, 255); 
  //  b = random(0, 255); 
  //  c = random(0, 255);
  //  background(a, b, c);
  //} else {
    background(ocean);
  //}
  if (keyPressed) {


    if (key == ' ' ) {
      x = 250;
      y = 250;
    } else if (keyCode == UP) {
      y= y-10;
    } else if (keyCode == DOWN) {
      y=y+10;
    } else if (keyCode == RIGHT) {
      x=x+10;
    } else if (keyCode == LEFT) {
      x=x-10;
    }
  }
  if (dist(mouseX, mouseY, x, y)<25) {
    z = 255; 
    fill(z);
  };
  fill(z);
  if (x > 483) {
    x = x - 15;
  };
  if (x < 7) {
    x = x + 15;
  };
  if (y > 483) {
    y = y - 15;
  };
  if (y< 7) { 
    y = y + 15;
  };

  image(turtle,x, y, 50, 50);
  
  trashbag.getTrash();
  trashbag2.getTrash2();
  fill(255,255,255);
  textSize(32);
  text(lives,110,50);
  text("Lives:",10,50);
  text("Score:",10,100);
  text(score,110,100);


}
