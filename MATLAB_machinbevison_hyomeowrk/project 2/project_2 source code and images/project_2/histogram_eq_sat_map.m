% reads in requested image
img = imread('sat_map.png');

%extracts the red green blue color channels from image 
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

%applies histogram equlization to each color channel 
r_HQ = histeq(r);
g_HQ = histeq(g);
b_HQ = histeq(b);

%combines the equlized color channels back into an RGB image
img_RGB = cat(3, r_HQ, g_HQ, b_HQ);

%transform the image into HSI color space
img_HSI = rgb2hsv(img);

%extract each channel of HSI 
h = img_HSI(:,:,1);
s = img_HSI(:,:,2);
i = img_HSI(:,:,3);

%applies histogram equlization only to the i channel as requested
I_HQ = histeq(i);

%combines the HSI channels back into an HSI image
img_HSI = cat(3,h,s,I_HQ);

% creates a new figure to diplay the images 
figure
%creats a 2x2 tile to place the images 
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('Original Image');

%display the RGB equlized image in the second tile
nexttile
imshow(img_RGB);
title('Original Image with RGB Equalized');

%display the HSI equlized channel in the 3rd tile
nexttile
imshow(img_HSI);
title('Original Image with HSI Equalized');
pause;

%saves the figure as a png file 
saveas(gcf, 'tiledlayout_Question3.png');