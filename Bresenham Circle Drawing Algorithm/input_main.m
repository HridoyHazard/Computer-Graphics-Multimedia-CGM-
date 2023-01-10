###This is the main file. And you need to create two functions.
##One for calculating the all points by using algorithm which is "bresenham_circle_convert".
##And another one is for drawing the circle which is "draw".

clc  ##to clear the window
r = 10; ##radius
cords = bresenham_circle_convert(r); ##calling the function "bresenham_circle_convert"for calculating all points for drawing, by passing radius. And storing in "cords" variable.
draw(cords); ##calling the function "draw" for drawing the circle by passing "cords" variable where all needed points are stored.
