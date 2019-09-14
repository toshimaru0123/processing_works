float i = 0;
int j = 1;
void setup() {
    background(255);
    size(500, 500);
}

void draw() {
    if(i > 350) {
        i = 0;
        j += 10;
        fill(255,255,255);
        noStroke();
        rect(0,0,500,500);
        if(j > 100) j = 1;
    }
    noFill();
    stroke(0);
    translate(width/2, height/2);
    rotate(i/j);
    rect(250 - i - width/2, 250 - i - height/2, i * 2 + 1, i * 2 + 1);
    i += 2;
}



// ツイート用
/*
float i=0;
int j=1;
void setup(){
background(255);
size(500, 500);
}
void draw(){
if(i>350){
i=0;
j+=10;
fill(255,255,255);
noStroke();
rect(0,0,500,500);
}
noFill();
stroke(0);
translate(width/2,height/2);
rotate(i/j);
rect(-i, -i, i*2+1, i*2+1);
i+=2;
}
*/