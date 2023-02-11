% Author: İrem Özcan
% Description: EE409 Mini Project
% The file named "wp.png" is up to you. Choose the image you want from your computer
tic;
subplot(1,2,1);
irem=imread('wp.png');
irem_gray=rgb2gray(irem);
ozcan=im2double(irem_gray); 
imshow(ozcan);
title('Original Grayscale Image','fontsize', [12]);
 
subplot(1,2,2);
%Take the FFT of your original grayscale image
[x,y]=size(ozcan);
fft_irem=fft2(ozcan,x,y);
 
%"n x n" averaging filter in frequency domain 
n=2*round(y/100)+1;     % n=11
m = ones(n);
mask = m/sum(m(:));

%You should use the FFT of the averaging mask
mask_FFT=fft2(mask,x,y);

%Then take the inverse FFT and display the blurred image 
Blur_FFT_Image=fft_irem.*mask_FFT;
Blur_Image=ifft2(Blur_FFT_Image);
imshow(Blur_Image);
title('Blurred Image','fontsize', [12]);
 
toc;
