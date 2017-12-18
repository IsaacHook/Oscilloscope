/**
 * ControlP5 Image as UI element (SpriteButton) 
 *
 * modified and commented by Kasper Kamperman, 2010 
 * updated 17-06-2017
 * used library version 2.2.9
 * ControlP5 by Andreas Schlegel 
 * http://www.sojamo.de/libraries/controlP5/
 *
 */
 
import controlP5.*;
ControlP5 controlP5;

void setup() {
  size(360,260);
  smooth();
    
  controlP5 = new ControlP5(this);
  
  controlP5.addButton("buttonPlay")
            .setPosition(20,40)
            .setImages(loadImage("button-normal.jpg"),loadImage("button-over.jpg"),loadImage("button-pressed.jpg"))
            .updateSize();
   
}

void draw() {
  background(0); // black background
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isController()) { 
    print("control event from : "+theEvent.getController().getName());
    println(", value : "+theEvent.getController().getValue());
  }
}