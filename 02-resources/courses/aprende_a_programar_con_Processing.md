# Aprende a programar con Processing

[Processing reference](https://processing.org/reference).

Processing is a free graphical library and integrated development environment (IDE) built for the electronic arts, new media art, and visual design communities with the purpose of teaching non-programmers the fundamentals of computer programming in a visual context.

## Coordinate display

```JAVA
void setup() {
    size(400, 400);
}

void draw() {
    background(0);
    text("X: " + mouseX + " Y: " + mouseY, mouseX + 10, mouseY - 10);
}
```

## Circle moving horizontally

```JAVA
int position_x = 50;


void setup() {
    size(500, 500);
}

void draw() {
    background(0);
    if (position_x + 50 < width)
        position_x++;
    circle(position_x, height / 2, 100);
}
```

## Coloring sections of a 2x2 canvas

```JAVA
void setup() {
    size(600, 600);
}

void draw() {
    background(0);
    if (mouseX > width / 2) {
        if (mouseY < height / 2)
            rect(width / 2, 0, width, height /2);
        else
            rect(width / 2, height /2, width, height);
    } else {
        if (mouseY < height / 2)
            rect(0, 0, width / 2, height /2);
        else
            rect(0, height / 2, width / 2, height);
    }
}
```

## Drawing lines in the middle of a 1x3 canvas

```JAVA
int section_width;


void setup() {
    size(600, 600);
    section_width = width / 3;
}

void draw() {
    if (section_width < mouseX && mouseX < section_width * 2)
        line(mouseX, 0, mouseX, height);
}
```

## Coloring the background and drawing shapes (circle or square)

```JAVA
boolean is_circle, is_increasing;
int color_value;


void setup() {
    size(600, 600);
    is_circle = false;
    is_increasing = true;
    color_value = 1;
}

void draw() {
    background(color_value);
    if (is_circle)
        circle(width / 2, height / 2, 100);
    else
        square(width / 2 - 50, height / 2 - 50, 100);
    if (is_increasing)
        color_value++;
    else
        color_value--;
    if (color_value == 255 || color_value == 0)
        is_increasing = !is_increasing;
}

void mouseClicked() {
    is_circle = !is_circle;
}
```

## Drawing custom shapes

```JAVA
void setup() {
    size(600, 600);
    custom_square(width / 4 - 50, height / 2 - 50, 100);
    fill(255);
    custom_circle(width / 2 + width / 4, height / 2, 100);
}

void custom_square(float x1, float y1, float square_size) {
    square(x1, y1, square_size);
    fill(0);
    square(x1 + square_size / 2, y1, square_size / 2);
    square(x1, y1 + square_size / 2, square_size / 2);
}

void custom_circle(float x, float y, float diameter) {
    circle(x, y, diameter);
    line(x - diameter / 2, y, x + diameter / 2, y);
    line(x, y - diameter / 2, x, y + diameter / 2);
}
```

## Drawing a grid

```JAVA
void setup() {
    size(600, 600);

    for (int x = 0; x <= width; x += 30)
        line(x, 0, x, height);
    for (int y = 0; y < height; y += 30)
        line(0, y, width, y);
}
```

## Drawing a circle grid with gradient

```JAVA
void setup() {
    size(600, 600);
}

void draw() {
    background(0);
    for (int x = 0; x <= width; x += 30) {
        for (int y = 0; y <= height; y += 30) {
            fill(x % 255, y % 255, 0);
            circle(x + frameCount % 30, y, 20);
        }
    }
}
```

## Electron trajectory

```JAVA
PImage nucleus, electron;
float x, y, r;


void setup() {
    size(600, 600);
    nucleus = loadImage("Nucleus.png");
    electron = loadImage("Electron.png");
    r = 100;
}

void draw() {
    background(0);

    x = mouseX + r * cos(frameCount * 0.1);
    y = mouseY + r * sin(frameCount * 0.1);

    text(x + " " + y, 100, 100);
    image(nucleus, mouseX - 50, mouseY - 50, 100, 100);
    image(electron, x - 25, y - 25, 50, 50);
}
```

## Spraying with the mouse buttons

```JAVA
boolean is_painting;
float range;


void setup() {
    size(600, 600);
    background(180);

    noStroke();
    is_painting = false;
    range = 10;
}

void draw() {
    if (is_painting)
        circle(random(mouseX - range, mouseX + range), random(mouseY - range, mouseY + range), 10);
}

void mousePressed() {
    if (mouseButton == LEFT)
        fill(255);
    else if (mouseButton == RIGHT)
        fill(0);
    is_painting = true;
}

void mouseReleased() {
    is_painting = false;
}
```

## Sniper reticle

```JAVA
float x, y, d;


void setup() {
    size(600, 600);

    noFill();
    stroke(0, 255, 0);
    strokeWeight(5);
    x = width / 2;
    y = height / 2;
    d = 50;
}

void draw() {
    background(0);

    circle(x, y, d);
    line(0, y, width, y);
    line(x, 0, x, height);
}

void keyPressed() {
    if (keyCode == UP && y - d / 2 >= 0)
        y -= 10;
    else if (keyCode == LEFT && x - d / 2 >= 0)
        x -= 10;
    else if (keyCode == DOWN && y + d / 2 <= height)
        y += 10;
    else if (keyCode == RIGHT && x + d / 2 <= width)
        x += 10;
    else if (key == 32)
        background(255, 0, 0);
}
```

## Interactive ellipse

```JAVA
color[] colors = { color(255, 0, 0), color(0, 255, 0), color(0, 0, 255) };
float ellipse_width, ellipse_height;
int ellipse_color;


void setup() {
    size(600, 600);
}

void draw() {
    background(0);

    ellipse_color = (int) map(mouseX, 0, width, 0, colors.length);
    ellipse_width = map(mouseX, 0, width, 0, width);
    ellipse_height = map(mouseY, 0, height, 0, height);

    fill(colors[ellipse_color]);
    ellipse(width / 2, height / 2, ellipse_width, ellipse_height);
}
```

## Resistor app

```JAVA
color[] colors = {
    color(0, 0, 0), // Black
    color(98, 50, 50), // Brown
    color(255, 0, 0), // Red
    color(255, 128, 0), // Orange
    color(255, 255, 0), // Yellow
    color(0, 128, 0), // Green
    color(0, 128, 192), // Blue
    color(128, 0, 255), // Violet
    color(128, 128, 128), // Gray
    color(255, 255, 255) // White
};
int[] bands = { 5, 0, 0 };
int color_clicked;
boolean is_dragging;


void setup() {
    size(360, 640);
    textSize(30);
}

void draw() {
    background(255);

    for (int i = 0; i < 10; i++) {
        fill(colors[i]);
        square(width - 0.1 * height, 0.1 * i * height, 0.1 * height);
    }

    fill(247, 203, 145);
    rect(0.25 * width, 0.1 * height, 0.3 * width, 0.6 * height);

    fill(colors[bands[0]]);
    rect(0.25 * width, 0.2 * height, 0.3 * width, 0.05 * height);

    fill(colors[bands[1]]);
    rect(0.25 * width, 0.35 * height, 0.3 * width, 0.05 * height);

    fill(colors[bands[2]]);
    rect(0.25 * width, 0.5 * height, 0.3 * width, 0.05 * height);

    if (is_dragging) {
        fill(colors[color_clicked]);
        circle(mouseX, mouseY, 20);
    }

    int value = (bands[0] * 10 + bands[1]) * (int) pow(10, bands[2]);

    if (value >= 1000000)
        text(value / 1000000 + " MΩ", 0.25 * width, 0.75 * height);
    else if (value >= 1000)
        text(value / 1000 + " KΩ", 0.25 * width, 0.75 * height);
    else
        text(value + " Ω", 0.25 * width, 0.75 * height);
}

void mousePressed() {
    if (width - 0.1 * height < mouseX) {
        is_dragging = true;
        color_clicked = (int) map(mouseY, 0 , height, 0, 9);
    }
}

void mouseReleased() {
    is_dragging = false;

    if (0.25 * width <= mouseX && mouseX <= 0.55 * width) {
        int band_number = (int) map(mouseY, 0.2 * height, 0.6 * height, 0, 3);

        if (0 <= band_number && band_number <= 2)
            bands[band_number] = color_clicked;
    }
}
```

## Calculation game

```JAVA
float x, y, side, margin;
int number_1, number_2, operator, answer, user_operator;


void setup() {
    size(360, 640);

    x = 0.1 * width;
    y = 0.5 * height;

    side = 0.8 * width;
    margin = x;

    textSize(0.15 * side);
    get_operation();
}

void draw() {
    background(255);

    fill(255);
    square(x, y, side);
    line(x, y + side / 2, x + side, y + side / 2);
    line(x + side / 2, y, x + side / 2, y + side);
    draw_operators();

    fill(0);
    text(number_1 + " ? " + number_2 + " = " + answer, x, 0.25 * height);
    println(user_operator + " = " + operator);
}

void draw_operators() {
    strokeWeight(20);

    // Addiction
    line(x + margin, y + side / 4, x + side / 2 - margin, y + side / 4);
    line(x + side / 4, y + margin, x + side / 4, y + side / 2 - margin);

    // Substraction
    line(x + side / 2 + margin, y + side / 4, x + side - margin, y + side / 4);

    // Division
    circle(x + side / 4, y + side / 2 + margin, 5);
    line(x + margin, y + side / 2 + side / 4, x + side / 2 - margin, y + side / 2 + side / 4);
    circle(x + side / 4, y + side - margin, 5);

    // Multiplication
    line(x + side / 2 + margin, y + side / 2 + margin, x + side - margin, y + side - margin);
    line(x + side / 2 + margin, y + side - margin, x + side - margin, y + side / 2 + margin);

    strokeWeight(3);
}

void get_operation() {
    number_1 = (int) random(1, 11);
    number_2 = (int) random(1, 11);
    operator = (int) random(4);

    switch (operator) {
        case 0:
            answer = number_1 + number_2;
            break;
        case 1:
            answer = number_1;
            number_1 *= number_2;
            break;
        case 2:
            answer = number_1 - number_2;
            break;
        case 3:
            answer = number_1 * number_2;
            break;
    }
}

void mousePressed() {
    if (x <= mouseX && mouseX <= x + side) {
        if (mouseX <= x + side / 2)
            if (mouseY <= y + side / 2)
                user_operator = 0;
            else
                user_operator = 1;
        else
            if (mouseY <= y + side / 2)
                user_operator = 2;
            else
                user_operator = 3;
    }

    if (operator == user_operator)
        get_operation();
    else
        background(255, 0, 0);
}
```

## Interactive Cartesian Plane

```JAVA
float x, y_1, y_2, side, slider_m, slider_b, m , b, grid_size;
boolean is_moving_m, is_moving_b;


void setup() {
    size(360, 640);

    x = 0.1 * width;

    y_1 = 0.8 * height;
    y_2 = 0.9 * height;

    side = 0.8 * width;

    slider_m = width / 2;
    slider_b = width / 2;

    grid_size = 0.05 * width;

    textSize(x);
}

void draw() {
    background(255);

    line(x, y_1, x + side, y_1);
    circle(slider_m, y_1, 30);

    line(x, y_2, x + side, y_2);
    circle(slider_b, y_2, 30);

    m = ((int) map(slider_m, x, x + side, -80, 80)) / 10.0;
    b = ((int) map(slider_b, x, x + side, -80, 80)) / 10.0;

    fill(0);
    text("y = " + m + "x + (" + b + ")", x, 0.6 * height);
    fill(255);

    if (x < mouseX && mouseX < x + side) {
        if (is_moving_m)
            slider_m = mouseX;
        else if (is_moving_b)
            slider_b = mouseX;
    }

    draw_plane();
    draw_equation();
}

void mousePressed() {
    if (abs(mouseY - y_1) < 30)
        is_moving_m = true;
    else if (abs(mouseY - y_2) < 30)
        is_moving_b = true;
}

void mouseReleased() {
    if (is_moving_m)
        is_moving_m = false;
    else if (is_moving_b)
        is_moving_b = false;
}

void draw_plane() {
    strokeWeight(1);
    square(x, x, side);

    for (float i = x; i <= x + side; i += grid_size) {
        line(i, x, i, x + side); // Horizontal lines
        line(x, i, x + side, i); // Vertical lines
    }

    strokeWeight(3);
    line(x + side / 2, x, x + side / 2, x + side); // y axis
    line(x, x + side / 2, x + side, x + side / 2); // x axis
}

void draw_equation() {
    // mx + b = -8, mx + b = 8
    float x1 =  (-8 - b) / m;
    float x2 =  (8 - b) / m;

    if (abs(x1) > 8 || abs(x2) > 8) {
        float y_1 = -1 * (m * -8 + b);
        float y_2 = -1 * (m * 8 + b);

        y_1 *= grid_size;
        y_2 *= grid_size;
        y_1 += x + side / 2;
        y_2 += x + side / 2;

        stroke(0, 0, 255);
        line(x, y_1, x + side, y_2); // from (-8,y_1) to (8,y_2)
        stroke(0);
    } else {
        x1 *= grid_size;
        x2 *= grid_size;

        x1 += x + side / 2;
        x2 += x + side / 2;

        stroke(0, 0, 255);
        line(x1, x + side, x2, x); // from (x1,-8) to (x2,8)
        stroke(0);
    }
}
```
