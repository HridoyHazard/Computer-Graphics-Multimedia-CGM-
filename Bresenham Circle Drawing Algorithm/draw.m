clc
function canvs = draw (points)
  
x_min = min(points(:,1)); y_min = max(points(:,2));


##next two lines are for shifting all values(x and y) into positive quadrant  
points(:,1)=points(:,1) + abs(x_min) +abs(y_min)+1; ##for all x values
points(:,2)=points(:,2) + abs(x_min) +abs(y_min)+1; ##for all y values
  
sz = max( [max(points(:,1)), max(points(:,2)) ] );  ##calculating the maximum x and y's values for size of canvas.
##If you want, you can add values in this line. "sz = max( [max(points(:,1)), max(points(:,2)) ] ) + 10;" try it.
canvs_black = zeros(sz); ## creating canvas with black color by giving the size.

  for i=1:size(points,1)
    canvs_black(points(i,1), points(i,2)) = 1; ##set pixels with white color
  endfor
 
 
canvs_white = ones(sz); ## creating canvas with white color by giving the size.
  for i=1:size(points,1)
    canvs_white(points(i,1), points(i,2)) = 0; ##set pixels with black color
  endfor
  imshow(canvs_white);
endfunction
#####Note that here we show the white canvas. You can change it by putting "canvs_black" into "imshow()" function.