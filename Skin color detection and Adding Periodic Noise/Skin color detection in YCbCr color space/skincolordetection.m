%Skin color detection in YCbCr color space
% Author: İrem Özcan
% Description: EE409 Mini Project
% The file named "wp.png" is up to you. Choose the image you want from your computer
tic;
irem=imread('wp.png');
ozcan=rgb2ycbcr(irem);

subplot(1,3,1)
imshow(irem)
title('Original Image','fontsize', [12])
subplot(1,3,2)
imshow(ozcan)
title('Image in YCbCr Color Space','fontsize', [12])

irem_YCbCr=(ozcan(:,:,1) >80 & (ozcan(:,:,2) >85 & ozcan(:,:,2) <135) & (ozcan(:,:,3) > 135 & ozcan(:,:,3) <180));

subplot(1,3,3)
imshow(irem_YCbCr)
title('Skin Detection in YCbCr Color Space','fontsize', [12])
toc;



