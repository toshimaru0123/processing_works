void setup() {
    background(255);
    size(810, 501);
    noFill();
    stroke( #000000 );
}

float x=500,y=500,r=500,start=180;
boolean xy=false,x_=true,y_=false;
void draw(){arc(x,y,r*2,r*2,radians(start), radians(start + 90));
    float tmp=r-(r/1.618);
    if(xy){
        if(x_){
            line(x, y, x+r, y);
            x += tmp;
        } else {
            line(x, y, x-r, y);
            x -= tmp;
        }
        x_ = !x_;
    } else {
        if(y_){
            line(x, y, x, y+r);
            y += tmp;
        } else {
            line(x, y, x, y-r);
            y -= tmp;
        }
        y_ = !y_;
    }
    xy = !xy;
    r /= 1.618;
    start += 90;
}

void keyPressed() {
  // Pのキーが入力された時に保存
  if(key == 'p' || key == 'P') {

    // デスクトップのパスを取得
    String path  = System.getProperty("user.home") + "/Desktop/screenshot.png";

    // 保存
    save(path);

    // ログ用途
    println("screen saved." + path); 
  }
}