
// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2011
// Box2DProcessing example

// Showing how to use applyForce() with box2d

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;

Head head; // A head object!
// Movers, jsut like before!
Mover[] movers = new Mover[25];

// Attractor, just like before!
Attractor a;

void setup() {
  head = new Head("meditador.png", 0, height/30);
  size(800,800);
  smooth();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // No global gravity force
  box2d.setGravity(0,0);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(8,16),random(width),random(height));
  }
  a = new Attractor(32,width/2,height/2);
}

void draw() {
  background(255);
  
   background(255);
  head.display();
   head.move();
   
  // We must always step through time!
  box2d.step();

  a.display();

  for (int i = 0; i < movers.length; i++) {
    // Look, this is just like what we had before!
    Vec2 force = a.attract(movers[i]);
    movers[i].applyForce(force);
    movers[i].display();
  }
}








// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-2: Rewrite Example 15-2 in an object-oriented fashion where the data for the 
// image, location, size, rotation, and so on is contained in a class. Can you have the class swap 
// images when it hits the edge of the screen? 

//Head head; // A head object!

//void setup() {
 // size(800, 800);
  // Load image, initialize variables
 
 // head = new Head("meditador.png", 0, height/64);
//}

//void draw() {
 // background(255);
//  head.display();
 // head.move();
//}