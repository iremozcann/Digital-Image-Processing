% Author: İrem Özcan
% Description: EE409 Mini Project
% Download the 'irem3.png' to your current folder

irem=imread('irem3.png');
 
binary=im2bw(irem,0.5);
reverse_binary=~binary;
imfilter = binary * 0; 
se1=[1 1 1; 1 1 1; 1 1 1];
for r=2:529
    for c=2:846
        patch = reverse_binary(r-1 : r+1, c-1:c+1);
         patchfilt = patch .* se1;
          patchfilt=sum(patchfilt(:));
             if (patchfilt > 0)
              imfilter(r,c) = 1;
             else
              imfilter(r,c) = 0;
        end 
        
    end
end
 
 
subplot(1,2,1); 
imshow(reverse_binary); 
title('Binary Image','fontsize',[12])
subplot(1,2,2); 
imshow(imfilter);
title('Dilation Binary Image','fontsize',[12])
