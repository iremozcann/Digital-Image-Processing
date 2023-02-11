% Author: İrem Özcan
% Description: EE409 Mini Project
% Open the document and replace the texts with your name (you can use double space between words) and
%adjust the font size as stated in the texts.Take the screenshot of the text and save as “yourname.png”
irem=imread('iremx.png');
b_irem=imbinarize(rgb2gray(im2double(irem)));
b_irem = 1 - b_irem; 
subplot(231)
imshow(b_irem);
title('BW edition of orginal image');
mask1= strel('disk',3);
b_irem=imopen(b_irem,mask1);
subplot(232)
imshow(b_irem);
title('opening with disk(3)');
SE = strel('rectangle',[22 22]);
b_irem2=imclose(b_irem,SE);
subplot(233)
imshow(b_irem2);
title('closing with rectangle[22 22]');
rec=strel('rectangle',[1 161]);
b_irem3=imopen(b_irem2,rec);
subplot(234)
imshow(b_irem3);
title('opening with rectangel [1 161]');
b_irem3= imreconstruct(b_irem3,b_irem);
subplot(235)
imshow(b_irem3);
title('reconstruct operation');
