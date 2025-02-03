import processing.serial.*;
Serial myPort;
float val1,val2,val3;
float x1, y1, x2, y2;
float temp;
void setup() {
  size(800,600);
    background(255,255,255);
 
  // up and down lines
  for (int i = 50; i < width + 1; i += 50){
    line(i, 0, i, height - 50);
  }
  // side to side lines
  for (int i = 50; i < height + 1; i += 50){
    line(50, i, width, i);
  }
}


void draw() {
  
  float temp = val1;
      float mapValTemp = 600 - map(temp, 62, 85, 0, 550);
      print("temp " + temp + " map " + mapValTemp);
      println();
      
      
      float humid = val2;
      float mapValHum = 600 - map(temp, 0, 100, 0, 550);
      print("humidity " + humid + " map " + mapValHum);
      
      
      float press = val3;
      float mapValPres = 600 - map(temp, 850, 1100, 0, 550);
      print("pressure " + press + " map " + mapValPres);


// axis names 
  fill(0, 0, 255);
  text("950 hpa", 3, 535);
  fill(0, 128, 0);
  text("0", 3, 550);
  fill(255, 0, 0);
  text("62 deg", 3, 565);
 
 
  // axis names 
  fill(0, 0, 255);
  text("1050 hpa", 3, 10);
  fill(0, 125, 0);
  text("100", 3, 25);
  fill(256, 0, 0);
  text("85 deg", 3, 40);

} 





































