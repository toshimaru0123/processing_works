float speed = 25, a = -1, x = 87;
int back_color = 5, color_d = 10;

void setup() {
    size(500, 500);
}
void draw() {
    fill(back_color, 50);
    noStroke();
    rect(0, 0, 500, 500);
    fill(260 - back_color);
    ellipse(x, 250, 100, 100);
    back_color += color_d;
    x += speed;
    speed += a;
    if(speed == 0 && a < 0) {
        speed = -25;
        a = 1;
    } else if (speed == 0 && a > 0) {
        speed = 25;
        a = -1;
    }
    if(back_color == 255)color_d = -10;
    else if (back_color == 5)color_d = 10;
}


// ツイート用
// float s=25,a=-1,x=87;int c=5,d=10;void setup(){size(500,500);}void draw(){fill(c,50);noStroke();rect(0,0,500,500);fill(260-c);ellipse(x,250,100,100);c+=d;x+=s;s+=a;if(s==0&&a<0){s=-25;a=1;}else if(s==0&&a>0){s=25;a=-1;}if(c==255)d=-10;else if(c == 5)d = 10;}