% Author: İrem Özcan
% Description: EE409 Mini Project
% Download the 'irem.jpg' to your current folder

irem=imread('irem.jpg');
irem=im2double(irem);
irem_gray=rgb2gray(irem);
 
 
filter=[-1 -1 -1;-1 8 -1; -1 -1 -1];
image_second_derivative=imfilter(irem_gray,filter);
image_second_derivative=abs(image_second_derivative);
row_derivative=image_second_derivative(150,:);
derivative_whiteline=image_second_derivative;
derivative_whiteline(150,:)=1; 
[a,b]=size(row_derivative);
a=1:b; 
 
subplot(1,3,1)
imshow(image_second_derivative)
title('Horizontal Second Order Derivative Of Image','fontsize', [11])
subplot(1,3,2)
imshow(derivative_whiteline)
title('White Line Image','fontsize', [11])
subplot(1,3,3)
plot(2:a(end)-1,row_derivative(2:b-1))
title('The Values of The Pixels In A Row','fontsize', [11])
xlabel('Pixels')
ylabel('Pixels Intensity')
