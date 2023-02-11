% Author: İrem Özcan
% Description: EE409 Mini Project
%) Enhance the contrast of the original double grayscale image by using the histogram equalization method
ozcan=imread('im1.jpg');
ozcan=rgb2gray(ozcan);
ozcan=im2double(ozcan);

J = histeq(ozcan);
subplot(1,3,1)
imshow(ozcan)
title('Grayscale Image','fontsize', [12])
 
subplot(1,3,2)
imshow(J)
title('Enhanced Histogram Equalization Method','fontsize',[12])
 
subplot(1,3,3)
imhist(J)
title('Histogram Equalization Image Histogram','fontsize',[12])
%) Enhance the contrast of the original double grayscale image by using the adaptive histogram equalization method

K = adapthisteq (ozcan);
subplot(1,3,1)
imshow(ozcan)
title('Grayscale Image','fontsize', [12])
subplot(1,3,2)
imshow(K)
title('Enhanced Adaptive Histogram Equalization Method')
subplot(1,3,3)
imhist(K)
title('Adaptive Histogram Equalization Image Histogram')

J = histeq(ozcan); 
K = adapthisteq(ozcan);
subplot(1,3,2)
imshow(ozcan)
title('Grayscale Image','fontsize', [12])
subplot(1,3,3)
imshow(K)
title('Enhanced Adaptive Histogram Equalization Method')
subplot(1,3,1)
imshow(J)
title(' Histogram Equalization Image Histogram')

