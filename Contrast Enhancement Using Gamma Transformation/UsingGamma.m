% Author: İrem Özcan
% Description: EE409 Mini Project
% Download the 'im1.jpg' to your current folder

ozcan=imread('im1.jpg');
ozcan=rgb2gray(ozcan);
ozcan=im2double(ozcan);
gama=0.4;
k=1.2;
result=ozcan;
for i=1:size(ozcan,1)
 for j=1:size(ozcan,2)
 result(i,j)=k*ozcan(i,j)^gama;
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
title('Gamma Transformation','fontsize', [12])
subplot(2,2,4)
imhist(result)
title('Histogram of Gamma Transformation] ','fontsize', [12])
