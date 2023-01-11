clc
function cord = direct_line_convert (p1, p2) ##The main function of this file. Here p1 and p2 are arguments.
##You need to set the "retval" word to "cord", because at the end of this, we stored values in "cord".

#####Here below is code of the Direct Line algorihtm.#####

x1 = p1(1); y1 = p1(2); ##"p1(1)" means the x coordinate value of start point and "p1(2)" means the y coordinate value of start point. As p1 = [2 , 0] so, p1(1) = 2 and p1(2) = 0.
x2 = p2(1); y2 = p2(2);

m = (y2 - y1) / (x2 -  x1); 
b = y1 - (m * x1);

points = zeros(1000 , 2); ## creating this for storing the calculated points of x and y. So, column number is 2. But we do not know how many points will generate for drawing the line, that's why we pick a large number like 1000. It's up to you.
if abs(m)<=1 
  if x1>x2
    tempx =  x1; tempy = y1;
    x1 =  x2; y1 = y2;
    x2 = tempx; y2 = tempy;
  endif
  
  x = x1; y = y1;
  i=1; ##for storing points
  while x<=x2
    points(i , :) = [x , round(y)]; ## here it stored like "points = [2 , 0];" when i=1. "points[2 0 ; 3 1];" when i=2. And at the end of this loop it will be "points = [2 0 ; 3 1 ; 4 2 ; 5 2 ; 6 3 ; 7 4];".
    x++;
    y = (m * x) + b;
    i++; ##for storing points
  endwhile


else
  if y1>y2
    tempx =  x1; tempy = y1;
    x1 =  x2; y1 = y2;
    x2 = tempx; y2 = tempy;
  endif
  x = x1; y = y1;
  i = 1; ##for storing points
  while y<=y2
    points(i , :) = [round(x) , y]; ##"points(i , :)" means storing all values (x and y) in rows / row-wise.
    y++;
    x = (y - b) / m;
    i++; ##for storing points
  endwhile
endif
cord = points(1:i-1,:); ##putting all values in "cord" variable, which will be returned in the previous file.
endfunction
