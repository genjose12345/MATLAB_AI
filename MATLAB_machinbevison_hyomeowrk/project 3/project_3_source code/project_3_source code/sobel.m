%reads in requested image
img = imread("moon.jpg");
%turns the image into a double
img_2 = im2double(img);
%creates the 2 filters needed for sobel
sobel_filter = [-1 -2 1; 0 0 0; 1 2 1];
sobel_filter_2 = [-1 0 1; -2 0 2; -1 0 1];
%applies the two filters onto the orginal image
sobel_img = imfilter(img_2,sobel_filter);
sobel_img_2 = imfilter(img_2,sobel_filter_2);
%applies the formula for sobels onto the image
sobel_img_3 = sqrt(sobel_img.^2 + sobel_img_2.^2);
%apply mat2gray to help with coloring issue
sobel_img_3_scale = mat2gray(sobel_img_3);

% creates a new figure to diplay the images
figure
%creats a 2x2 tile to place the images
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('orginal img');

%display the first part of the sobel filter in the second tile
nexttile
imshow(sobel_img);
title('sobel filter 1');

%display second part of the filter in the third title
nexttile
imshow(sobel_img_2);
title('sobel filter 2');

%display the final image in the fourth tile
nexttile
imshow(sobel_img_3_scale);
title('final image ');
%saves the displayed images 
saveas(gcf, 'Sobel.png');