import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[0],57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  int y = arduino.analogRead(5);
  System.out.println(y);
  background(256,256,256);
  fill(173, 117, 14);
  rect(110,225,40,75,24,24,24,24);
  rect(190,225,40,75,24,24,24,24);
  ellipse(200 , 200 , 200 , 100);
  ellipse(100,200,125,125);
  rect(160,225,40,75,24,24,24,24);
  rect(240,225,40,75,24,24,24,24);
  fill(y,256-y,y/2);
  ellipse(75,190,30,60);
  ellipse(115,190,30,60);
  fill(0,0,0);
  ellipse(70,190,10,10);
  ellipse(110,190,10,10);
  noFill();
  arc(100,200,100,100,1,2.2);
  //tail
  line(300,200,350,250-y/3);
  fill(173, 117, 14);
  arc(55,155,25,25,2.1,5.7);
  arc(145,155,25,25,3.9,7.3);
  fill(199, 146, 50);
  arc(55,155,15,15,2.1,5.7);
  arc(145,155,15,15,3.9,7.3);
  //paws
  line(120,285,120,298);
  line(130,285,130,300);
  line(140,285,140,298);
  line(170,285,170,298);
  line(180,285,180,300);
  line(190,285,190,298);
  line(210,285,210,300);
  line(220,285,220,298);
  line(250,285,250,298);
  line(260,285,260,300);
  line(270,285,270,298);
}

