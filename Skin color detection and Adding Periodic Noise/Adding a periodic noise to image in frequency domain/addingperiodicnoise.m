%Adding a periodic noise to image in frequency domain
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
imshow(real(fft_irem));
title('FFT of Grayscale Image','fontsize', [12]);
 
 
subplot(1,3,3);
fft_irem(18,1)=35000;
fft_iremNoised=ifft2(fft_irem);
imshow(real(fft_iremNoised));
title('Periodic Noised Image of Grayscale Image');
 
toc;
