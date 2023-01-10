clc
function cord = bresenham_circle_convert (r) ##The main function of this file. Here r is the argument.
##You need to set the "retval" word to "cord", because at the end of this, we stored values in "cord".

#####Here below is code of the Bresenham's Circle algorihtm.#####

x=0; y = r; 
d = 3 - (2 * r);
  
points = zeros(1000,2); ## creating this for storing the calculated points of x and y. So, column number is 2. But we do not know how many points will generate for drawing the line, that's why we pick a large number like 1000. It's up to you.
i=1;

  while x<=y 
    points(i,:) = [x y]; i+=1; ## here it stored like "points = [0 , 4];" when i=1. "points[0 4 ; 0 -4; 0 4; 0 -4; 4 0; 4 0; -4 0; -4 0; 1 4];" when i=9.
    points(i,:) = [x -y]; i+=1; ## here it stored "points = [0  4; 0 -4];" when i=2.
    points(i,:) = [-x y]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4];" when i=3.
    points(i,:) = [-x -y]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4; 0 -4];" when i=4.
    
    points(i,:) = [y x]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4; 0 -4; 4 0];" when i=5.
    points(i,:) = [y -x]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4; 0 -4; 4 0; 4 0];" when i=6.
    points(i,:) = [-y x]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4; 0 -4; 4 0; 4 0; -4 0];" when i=7.
    points(i,:) = [-y -x]; i+=1; ## here it stored "points = [0  4; 0 -4; 0 4; 0 -4; 4 0; 4 0; -4 0; -4 0];" when i=8.
    ##the above lines are for Eight-way symmetry##
    
    if d<0 
      d = d + (4 * x) + 6;
    else
      d = d + 4 * (x-y) + 10;
      y--;
    endif
    x++;
    
  endwhile
  points(i,:) = [0 0]; ##for drawing central point.
  cord = points(1:i,:);
  
endfunction
