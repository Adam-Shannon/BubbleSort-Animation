Bubble[] Bubbles = new Bubble[30];

void setup(){
// define size and background
  size(920,340);
  background(168);
}

void draw(){
//define starting coordinates and draw initial bubbles
  int x_0 = 20;
  int y_0 = 180;
  
  for (int i=0; i< this.Bubbles.length; i++){
    this.Bubbles[i] = new Bubble(x_0,y_0,random(100,255));
    x_0 += 30;
  }
//perform bubbleSort and finish
  bubbleSort(this.Bubbles);
  noLoop();
}

//standard bubble sort algorithm with additional swap of bubble objects in drawing
void bubbleSort(Bubble[] bubbles){
  int length = bubbles.length;
  for (int i=0; i< length-1; i++){
    for (int j=0; j < length-i-1; j++){
      if (bubbles[j].colour > bubbles[j+1].colour){
        Bubble temp = bubbles[j];
        bubbles[j] = bubbles[j+1];
        bubbles[j+1] = temp;
        bubbles[j].Swap(bubbles[j+1]);   
      }
    }
  }
}
