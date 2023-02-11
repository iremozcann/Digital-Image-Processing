# Digital Image Processing Tasks

### Distorting image by blurring in frequency domain
Take the FFT of your original grayscale image. Then blur your photo(using its FFT) with an "n x n" averaging filter in frequency domain. If your image has "c" number of columns then
n=2*round(c/100)+1. (Ex: If your image has 437 columns, then n=2*round(437/100) + 1 = 9; 
So apply 9x9 averaging filter to your image). You should use the FFT of the averaging mask. Then take the inverse FFT and display
the blurred image.

### Reconstructing blurred image by inverse filtering
Deblur your blurred image in frequency domain. Display the blurred and deblurred images on the same graph by using subplot();. 

### Adding Gaussian Random Noise to Image
Matlab code to add Gaussian random noise with μ=0 and σ=0.18 to every pixel of your images. Do not use “imnoise” function. Repeat it with μ=0 and σ=0.28. Display and report
the resultant images side by side in the same figure. Draw the histograms of the original and the noisy yourName _gray images side by side in another figure.
(Generate a medium gray image (with 180 rows and 280 columns) in Matlab whose pixel values are all 0.5 in a double variable called yourName_gray)

### Adding Uniform Random Noise to Image
Matlab code to add random values(noise) between -0.28 and +0.28 to every pixel of your images. Do not use “imnoise” function. Repeat it by adding random values between -0.38 and +0.38. Display
and report the resultant images side by side in the same figure window. Draw the histograms of the original and the noisy yourName _gray images side by side in another figure.
(Generate a medium gray image (with 180 rows and 280 columns) in Matlab whose pixel values are all 0.5 in a double variable called yourName_gray)

### Skin color detection in YCbCr color space
Convert your RGB color image into YCbCr color space. Mark the pixels with skin color as white and others as black using the following YCbCr thresholds:
Y > 80 , 85 < Cb <135, 135 < Cr < 180
### Adding a periodic noise to image in frequency domain 
Take the FFT of your original grayscale image and add a periodic sinusoidal noise by changing just the cth vertical frequency coefficient with a proper value. (c=d+10; where d is 8) 
### Histogram & Adaptive Histogram Equalization
Enhance the contrast of the original double grayscale image by using the histogram equalization method and adaptive histogram equalization method. Display and report the resultant images together with previous low contrast
image side by side in the same figure window. 

### Coding Dilation
- You will use the attached Word document. Open the document and replace the texts with your name (you can use double space between words) and adjust the font size as stated in the texts. As you know, “d”
represents the last digit of your student ID number. Take the screenshot of the text and save as “yourname.png”. Open the image in Matlab and convert your RGB image to binary
- Write a Matlab script with a double for loop to implement dilation morphological operation and dilate your binary image with the 3x3 structural element “se1=[1 1 1; 1 1 1; 1 1 1]”. (Don’t use morphological operation functions in Matlab such as imdilate();) 

### Contrast Enhancement Using Gamma Transformation
Try to enhance the contrast of the original double grayscale image using gamma transformation. Display and report the transformed image and its histogram side by side in the same figure window. 

### Contrast Enhancement Using Piecewise Linear Transformation
Apply piecewise linear transformation with 2 linear pieces to enhance the double grayscale image. Determine and report the best parameters (a and ya) as you can to enhance your image. Remember that L=1 for double grayscale
images. Display and report the obtained images and their histogram side by side in the same figure window. 

### Detecting The Longest Word
- You will use the attached Word document. Open the document and replace the texts with your name (you can use double space between words) and adjust the font size as stated in the texts. As you know, “d”
represents the last digit of your student ID number. Take the screenshot of the text and save as “yourname.png”. Open the image in Matlab and convert your RGB image to binary
- Write a Matlab code that automatically detects the longest horizontal word (that has largest width) in your name by using morphological operations.

### Finding the edges
- You will use the attached Word document. Open the document and replace the texts with your name (you can use double space between words) and adjust the font size as stated in the texts. As you know, “d”
represents the last digit of your student ID number. Take the screenshot of the text and save as “yourname.png”. Open the image in Matlab and convert your RGB image to binary
- Write a Matlab code that finds the edges of your name by using morphological operations.

### Removing desired text according to its “size” by using morphological operations
- You will use the attached Word document. Open the document and replace the texts with your name (you can use double space between words) and adjust the font size as stated in the texts. As you know, “d”
represents the last digit of your student ID number. Take the screenshot of the text and save as “yourname.png”. Open the image in Matlab and convert your RGB image to binary
- Use morphological operations to clear your name with smallest (10+d) font size while preserving the others. Then clear smallest(10+d) and medium(25+d) size texts while preserving the largest(35+d) text. Note that after the
operations the texts on your images should be readable although there might be some distortions. Try to merge broken letters.

### High-Boost Sharpening
Sharpen your double grayscale image using “High-Boost” sharpening method with just applying a single mask to your image. Display the sharpened image
(use subplot). Try to obtain a visually pleasant sharp image as much as you can.

### Unsharp Masking
Sharpen your double grayscale image using “Unsharp Masking” method with 3x3 weighted averaging filter. First apply the weighted averaging filter to your image and
display the result (use subplot). Then use it for “Unsharp Masking” sharpening of your image and display the sharpened image (use subplot). Try to obtain a visually pleasant sharp image as much
as you can. 

### Finding the horizontal 1st order derivative
Take the horizontal first order derivative of your double grayscale image(without white line). Then plot the same row of your image derivative (use subplot).
### Finding the horizontal 2nd order derivative
Take the horizontal second order derivative of your double grayscale image(without white line) and take its absolute value. Then plot the same row of your image.Draw a white line on the same row of the
derivative image as in previous questions and display (use subplot). 





