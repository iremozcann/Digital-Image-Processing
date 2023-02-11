% Author: İrem Özcan
% Description: EE409 Mini Project
irem=imread('irem.jpg');
irem_g=rgb2gray(im2double(irem));
mask=ones(3,3);
masknorm=mask/sum(mask(:));
imavg=imfilter(irem_g,masknorm);
unsharp_tahir_g=2*irem_g - imavg;
subplot(1,2,1);
imshow(irem_g);
title('Original Image');
subplot(1,2,2);
imshow(unsharp_tahir_g);
title('Unsharp Image');
