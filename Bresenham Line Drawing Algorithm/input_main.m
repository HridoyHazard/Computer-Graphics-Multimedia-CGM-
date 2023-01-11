###This is the main file. And you need to create two functions.
##One for calculating the all points by using algorithm which is "direct_line_convert".
##And another one is for drawing the line which is "draw".

clc  ##to clear the window
p1 = [2 , 0];  ##start point
p2 = [7 , 4];  ##end point
cords = direct_line_convert(p1,p2); ##calling the function "direct_line_convert"for calculating all points for drawing, by passing points p1 and p2. And storing in "cords" variable.
draw(cords); ##calling the function "draw" for drawing the line by passing "cords" variable where all needed points are stored.



#####Note that the drawing will be shown as rotate mode. So do not worry about that.######