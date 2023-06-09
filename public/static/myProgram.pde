/**
 * Bouncing Ball with Vectors 
 * 
 * Demonstration of using vectors to control motion 
 * of a body.
 */
 
PVector location1;  // Location of shape
PVector velocity1;  // Velocity of shape
PVector gravity1;   // Gravity acts at the shape's acceleration
PVector location2;  // Location of shape
PVector velocity2;  // Velocity of shape
PVector gravity2;   // Gravity acts at the shape's acceleration


void setup() {
  size(640,360);
  location1 = new PVector(100,100);
  velocity1 = new PVector(1.5,2.1);
  gravity1 = new PVector(0,0.2);
  location2 = new PVector(200,100);
  velocity2 = new PVector(2.5,1.1);
  gravity2 = new PVector(0,0.5);
}

void draw() {
  background(0);
  
  // Add velocity to the location.
  location1.add(velocity1);
  // Add gravity to velocity
  velocity1.add(gravity1);
  // Add velocity to the location.
  location2.add(velocity2);
  // Add gravity to velocity
  velocity2.add(gravity2);
  
  // Bounce off edges
  if ((location1.x > width) || (location1.x < 0)) {
    velocity1.x = velocity1.x * -1;
  }
  if ((location2.x > width) || (location2.x < 0)) {
    velocity2.x = velocity2.x * -1;
  }
  
  if (location1.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity1.y = velocity1.y * -0.95; 
    location1.y = height;
  }
  if (location2.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity2.y = velocity2.y * -0.95; 
    location2.y = height;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(location1.x,location1.y,48,48);
  stroke(455);
  strokeWeight(2);
  fill(0,48,355);
  ellipse(location2.x,location2.y,80,80);
}
