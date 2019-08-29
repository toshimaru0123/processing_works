int i = 0;
float tx = 3;
float ty = 1;

int length_line = 150;
int length_weight = 3;
float degree = 0;
boolean rotate_direction = true;
float rotate_speed = 4;

float center_x = 250;
float center_y = 250;

float x1 = 0;
float y1 = 0;

float x2 = 0;
float y2 = 0;

void setup() {
    size(400,400);
    background(0);
}

float cal_theta(){
    if (rotate_direction) {
        if(degree < 360) {
            degree += rotate_speed;
        } else {
            degree = 0;
        }
    } else {
        if(degree > 0) {
            degree -= rotate_speed;
        } else {
            degree = 360;
        }
    }

    float theta = radians(degree);
    return theta;
}

float cal_x1(float theta) {
    float x1 = (length_line / 2) * floor(floor(cos(theta) * pow(10,2)))/pow(10,2);
    if (x1 + center_x < 0) {
        x1 += abs(x1 + center_x);
        center_x += abs(x1 + center_x);
        x2 += abs(x1 + center_x);

        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        tx = 3;     
    } else if (x1 + center_x > width) {
        x1 -= abs(x1 + center_x - width);
        center_x -= abs(x1 + center_x - width);
        x2 -= abs(x1 + center_x - width);

        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        tx = -3; 
    }
    return x1;
}

float cal_y1(float theta) {
    float y1 = (length_line / 2) * floor(floor(sin(theta) * pow(10,2)))/pow(10,2);
    if (y1 + center_y < 0) {
        y1 += abs(y1 + center_y);
        center_y += abs(y1 + center_y);
        y2 += abs(y1 + center_y);
        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        ty = floor(random(1, 4) * pow(10,2))/pow(10, 2);
    } else if (y1 + center_y > width) {
        y1 -= abs(y1 + center_y - width);
        center_y -= abs(y1 + center_y - width);
        y2 -= abs(y1 + center_y - width);
        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        ty = -1 * floor(random(1, 4) * pow(10,2))/pow(10, 2);
    }
    return y1;
}

float cal_x2(float theta) {
    float x2 = (length_line / 2) * floor(floor(cos(theta + PI) * pow(10,2)))/pow(10,2);
    if (x2 + center_x < 0) {
        x1 += abs(x2 + center_x);
        center_x += abs(x2 + center_x);
        x2 += abs(x2 + center_x);
        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        tx = 3;
    } else if (x2 + center_x > width) {
        x1 -= abs(x2 + center_x - width);
        center_x-= abs(x2 + center_x - width);
        x2 -= abs(x2 + center_x - width);
        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        tx = -3;
    }
    return x2;
}

float cal_y2(float theta) {
    float y2 = (length_line / 2) * floor(floor(sin(theta + PI) * pow(10,2)))/pow(10,2);
    if (y2 + center_y < 0) {
        y1 += abs(y2 + center_y);
        center_y += abs(y2 + center_y);
        y2 += abs(y2 + center_y);

        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        ty = floor(random(1, 4) * pow(10,2))/pow(10, 2);
    } else if (y2 + center_y > width) {
        y1 -= abs(y2 + center_y - width);
        center_y -= abs(y2 + center_y - width);
        y2 -= abs(y2 + center_y - width);

        if (rotate_direction){
            rotate_direction = false;
        } else {
            rotate_direction = true;
        }
        ty = -1 * floor(random(1, 4) * pow(10,2))/pow(10, 2);
    }
    return y2;
}

void draw() {
    float theta = cal_theta();
    center_x = floor(center_x);
    center_y = floor(center_y);
    x1 = cal_x1(theta);
    y1 = cal_y1(theta);
    x2 = cal_x2(theta);
    y2 = cal_y2(theta);
    
    center_x += tx;
    center_y += ty;

    fill(0, 30);
    noStroke();
    rect(0, 0, 500, 500);
    stroke(255, random(255), 0);
    strokeWeight(length_weight);
    line(x1 + center_x, y1 + center_y, x2 + center_x, y2 + center_y);
}

