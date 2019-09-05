float x = 0, y = 0;
int length = 1;
boolean check = true, change = true;

void setup() {
    background(255);
    size(500, 500);    
}

void draw() {
    fill(255, 20);
    noStroke();
    rect(0, 0, 500, 500);

    if(change) {
        change = false;
        length = 1;
        x = random(500);
        y = random(500);
        check = !check;
    }
    stroke(random(100), 0, random(100,255));
    strokeWeight(3);
    if(check) {
        line(x + length, y, x - length, y);
        if (x+length > 500 && x - length < 0) change = true;
    } else {
        line(x, y + length, x, y - length);
        if (y+length > 500 && y - length < 0) change = true;
    }
    length += 50;
}

//ツイート用
/*
float x=0,y=0;int l=1;boolean ch=true,c=true;
void setup(){background(255);size(500,500);}
void draw() {fill(255,20);noStroke();rect(0,0,500,500);if(c){c=false;l=1;x=random(500);y=random(500);ch = !ch;}stroke(random(100),0,random(100,255));strokeWeight(3);if(ch){line(x+l,y,x-l,y);if(x+l>500&&x-l<0)c=true;}else{line(x,y+l,x,y-l);if(y+l>500&&y-l<0)c=true;}l+=50;}
*/