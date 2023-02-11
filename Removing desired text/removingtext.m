% Author: İrem Özcan
% Description: EE409 Mini Project
% Open the document and replace the texts with your name (you can use double space between words) and
%adjust the font size as stated in the texts.Take the screenshot of the text and save as “yourname.png”
irem=imread('iremx.png');
b_irem=imbinarize(rgb2gray(im2double(irem)));
b_irem=abs(b_irem-1);
subplot(231)
imshow(b_irem);
title('BW edition of orginal image');
mask1= strel('disk',3);
small_irem=imopen(b_irem,mask1);
mask2 = strel('disk',4);
subplot(232)
imshow(small_irem);
title('opening with disk(3)');
medium_irem=imerode(b_irem,mask2);
subplot(233)
imshow(medium_irem);
title('erosion with disk(4)');
medium_irem=bwareaopen(medium_irem,40);
subplot(234)
imshow(medium_irem);
title('delete pixel group < 40 area');
medium_irem=imdilate(medium_irem,mask1);
subplot(235)
imshow(medium_irem);
title('dilation with disk(3)');
