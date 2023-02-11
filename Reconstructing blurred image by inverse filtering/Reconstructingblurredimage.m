% Author: İrem Özcan
% Description: EE409 Mini Project
% The file named "wp.png" is up to you. Choose the image you want from your computer

tic;
subplot(1,3,1);
irem=imread('wp.png');
irem_gray=rgb2gray(irem);
ozcan=im2double(irem_gray); 
imshow(ozcan);
title('Original Grayscale Image','fontsize', [12]);
 
subplot(1,3,2);
[x,y]=size(ozcan);
fft_irem=fft2(ozcan,x,y);
 
n=2*round(y/100)+1;     % n=11
m = ones(n); 
mask = m/sum(m(:));
 
mask_FFT=fft2(mask,x,y);
Blur_FFT_Image=fft_irem.*mask_FFT;
Blur_Image=ifft2(Blur_FFT_Image);
imshow(Blur_Image);
title('Blurred Image','fontsize', [12]);
 
subplot(1,3,3);
Deblurred=Blur_FFT_Image./mask_FFT;
Deblurred_ifft=ifft2(Deblurred);
imshow(real(Deblurred_ifft));
title('Deblurred Image','fontsize', [12]);
 
toc;
