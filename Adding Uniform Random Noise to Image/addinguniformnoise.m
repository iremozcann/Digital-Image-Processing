% Author: İrem Özcan
% Description: EE409 Mini Project
% The file named "irem.png" is up to you. Choose the picture you want from your computer

irem = imread('irem.jpg');
irem = im2double(irem);
irem=rgb2gray(irem);
rows=180; 
columns=280;
irem_gray=zeros(rows,columns) + 0.5;
%add random values(noise) between -0.28 and +0.28 to every pixel of image
%n = number of samples
%u = lower_bound + rand(1,n)*(upper_bound-lower_bound);
 
noise_1 = -0.28+ rand(rows,columns)*0.56;
irem_gray_noise1 = irem_gray + noise_1;
 
%adding random values between -0.38 and +0.38

noise_2 = -0.38+ rand(rows,columns)*0.78;
irem_gray_noise2 = irem_gray + noise_2;
 
subplot(2,2,1)
imshow(irem_gray)
title('Original Image','fontsize', [12])
subplot(2,2,2)
imhist(irem_gray)
title('Histogram of Original Image','fontsize', [12])
subplot(2,2,3)
imshow(irem_gray_noise1)
title('Adding Random Noise [0.28 +0.28]','fontsize', [12])
subplot(2,2,4)
imhist(irem_gray_noise1)
title('Histogram of Random Noise [0.28 +0.28] ','fontsize', [12])

noise_1 = -0.28+ rand(rows,columns)*0.56;
irem_gray_noise1 = irem_gray + noise_1;
 
%adding random values between -0.38 and +0.38
noise_2 = -0.38+ rand(rows,columns)*0.78;
irem_gray_noise2 = irem_gray + noise_2;
 
subplot(2,2,1)
imshow(irem_gray)
title('Original Image','fontsize',  [12])
subplot(2,2,2)
imhist(irem_gray)
title('Histogram of Original Image','fontsize', [12])
subplot(2,2,3)
imshow(irem_gray_noise2)
title('Adding Random Noise [0.38 +0.38]','fontsize', [12])
subplot(2,2,4)
imhist(irem_gray_noise2)
title('Histogram of Random Noise [0.38 +0.38] ','fontsize', [12])


