% Author: İrem Özcan
% Description: EE409 Mini Project

% array_gaussian_noise=mu+randn(size_1,size_2)*sigma
% where mu is the mean value, when generating noise this is usually 0.
%[size_1 size_2] is the size of the image
% sigma is the standard deviation
irem = imread('irem.jpg');
irem = im2double(irem);
irem=rgb2gray(irem);
rows=180; 
columns=280;
irem_gray=zeros(rows,columns) + 0.5;
mu=0; 
sigma=0.18;
gnoise_1 = randn(rows,columns)*sigma;
 
sigma_2=0.28;
gnoise_2 = randn(rows,columns)*sigma_2;
 
gaussian_noise_1 = irem_gray + gnoise_1;
gaussian_noise_2= irem_gray + gnoise_2;
 
 
subplot(2,2,1)
imshow(gaussian_noise_1)
title('Gaussian Random Noise with \sigma 0.18','fontsize', [12])
subplot(2,2,2) 
imhist(gaussian_noise_1)
title('Histogram of Gaussian Noise with \sigma 0.18]','fontsize', [12])
subplot(2,2,3)
imshow(gaussian_noise_2)
title('Gaussian Random Noise with \sigma 0.28','fontsize', [12])
subplot(2,2,4)
imhist(gaussian_noise_2)
title('HHistogram of Gaussian Noise with \sigma 0.28] ','fontsize', [12])
subplot(3,2,1)
imshow(irem_gray)
title('Original Image','fontsize',  [12])
subplot(3,2,2)
imhist(irem_gray)
title('Histogram of Original Image','fontsize', [12])
subplot(3,2,3)
imshow(gaussian_noise_1) 
title('Gaussian Random Noise with \sigma 0.18','fontsize', [12])
subplot(3,2,4)
imhist(gaussian_noise_1)
title('Histogram of Gaussian Noise with \sigma 0.18]','fontsize', [12])
subplot(3,2,5)
imshow(gaussian_noise_2)
title('Gaussian Random Noise with \sigma 0.28','fontsize', [12])
subplot(3,2,6)
imhist(gaussian_noise_2)
title('HHistogram of Gaussian Noise with \sigma 0.28] ','fontsize', [12])
