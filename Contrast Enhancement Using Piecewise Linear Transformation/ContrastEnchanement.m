% Author: İrem Özcan
% Description: EE409 Mini Project
% Download the 'im1.jpg' to your current folder

ozcan=imread('im1.jpg');
ozcan=rgb2gray(ozcan);
ozcan=im2double(ozcan);
a=0.17;
y_a=0.78;
 
parameter_1=(y_a)/(a);
parameter_2=(1-y_a)/(1-a);
output=ozcan;
for i=1:size(ozcan,1)
    for j=1:size(ozcan,2)
      if ozcan(i,j)<a
         result(i,j)=parameter_1*ozcan(i,j);
     elseif ozcan(i,j)>=a && ozcan(i,j)<1
         result(i,j)=parameter_2*(ozcan(i,j)-a)+y_a;
      end
  end
end
 
subplot(2,2,1)
imshow(ozcan)
title('Grayscale Image','fontsize', [12])
subplot(2,2,2) 
imhist(ozcan)
title('Histogram of grayscale image ','fontsize', [12])
subplot(2,2,3)
imshow(result)
title('Piecewise Linear Transformation','fontsize', [12])
subplot(2,2,4)
imhist(result)
title('Histogram of Piecewise Linear Transformation] ','fontsize', [12])
