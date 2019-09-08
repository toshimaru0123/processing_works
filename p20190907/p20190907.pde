int i=1;
float a=1.12;
float x1,x2,x3;
float y1,y2,y3;
float d1,d2,d3;

void setup() {
    background(255, 0);
    size(512, 512);
}

void draw() {
    if(i == 1){
        x1 = random(0,width); y1 = random(0, width); d1 = random(1,5);
        x2 = random(0,width); y2 = random(0, width); d2 = random(1,5);
        x3 = random(0,width); y3 = random(0, width); d3 = random(1,5);
        fill(50,0,x3);
        ellipse(x1, y1, d1, d1);
        fill(30,0,x1);
        ellipse(x2, y2, d2, d2);
        fill(20,0,y3);
        ellipse(x3, y3, d3, d3);
    } else {
        fill(50,0,x3);
        ellipse(x1, y1, d1 * a, d1 *= a);
        fill(30,0, x1);
        ellipse(x2, y2, d2 * a, d2 *= a);
        fill(20,0,y3);
        ellipse(x3, y3, d3 * a, d3 *= a);
        if(i == 80) {
            fill(255,255);
            noStroke();
            rect(0, 0, width, width);
            i = 0;
        }
    }
    ++i;
}