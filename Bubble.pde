class Bubble{
   public int colour;
   public int x,y;

   Bubble(int x, int y, float colour){  
     this.colour = int(colour);
     this.x = x;
     this.y = y;
     display();
   }
   
   void Swap(Bubble OtherBubble){
//simple postion swap of two Bubble objects
     int otherX = x;
     int otherY = y;
     this.x = OtherBubble.x;
     this.y = OtherBubble.y;
     OtherBubble.x = otherX;
     OtherBubble.y = otherY;
     display();
     OtherBubble.display();
   }
   
   void display(){
//draw or re-draw the Bubble object
     noStroke();
     fill(0,100,colour);
     circle(x,y,25);
     fill(255);
     textSize(10);
     text(int(colour),x-10,y+5);
   }
}
