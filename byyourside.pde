import org.openkinect.processing.*;
import processing.video.*;

Movie vid;
Kinect2 kinect2;

int newFrame = 0;
float minDepth=0.0;
float maxDepth=2000; //4.5m
boolean off = false;
int skip = 10; // values from 2 to 20 seem to work best, it gets too jumpy after that

void setup() {

  size(1440, 900);
  background(0);

  vid = new Movie(this, "climb.mp4");
  vid.play();
  vid.jump(0);
  vid.pause();

  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
}

void draw() {
  background(0);
  image(vid, 0, 0, width, height);
  fill(255);

  int[] depth = kinect2.getRawDepth(); //values between zero and 4500
  float sumX=0; 
  float totalPixels=0;

  for (int x = 0; x < kinect2.depthWidth; x+=skip) { //analysing less elements to make it 
    for (int y = 0; y < kinect2.depthHeight; y+=skip) { // more responsive
      int offset = x + y * kinect2.depthWidth;
      int d = depth[offset];

      if (d > minDepth && d < maxDepth) { // replaced hard values for existing variables
        sumX += d;
        totalPixels++;

      }
    }
  }

  float av = sumX/totalPixels;
  int f = ceil (map(av, minDepth, maxDepth, 0, getLength()));
  setFrame(f);
           println(f);
}

void movieEvent(Movie vid) {
  vid.read();
}

void setFrame(int n) {
  vid.play();

  float frameDuration = 1.0 / vid.frameRate;
  float where = (n + 0.5) * frameDuration; 
  float diff = vid.duration() - where;
  
  if (diff < 0) {
    where += diff - 0.25 * frameDuration;
  }

  vid.jump(where);
  vid.pause();
}  

int getFrame() {
  return ceil(vid.time() * 30) - 1;
}

float getLength() {
  return int(vid.duration() * vid.frameRate);
}
