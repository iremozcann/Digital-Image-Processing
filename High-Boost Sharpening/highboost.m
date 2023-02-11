% Author: İrem Özcan
% Description: EE409 Mini Project

irem=imread('irem.jpg');
irem_g=rgb2gray(im2double(irem));
lap_mask=[0 -1 0;-1 5 -1; 0 -1 0];
imlap=imfilter(irem_g,lap_mask);
subplot(1,2,1);
imshow(irem_g);
title('Original Image');
subplot(1,2,2);
imshow(imlap);
title('High-Boost Image');
