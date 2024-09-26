%inputs the requested image
img_1 = imread('university.png');  
%applies the  histogram equalization to im_1
img_2 = histeq(img_1);
%calculates the histogram of the orginal image up to 255 grayscale
img_edit1 = imhist(img_1,255);
%calculates the histogram of the new image up to 255 grayscale 
img_edit2 = imhist(img_2,255);

% creates a new figure to diplay the images and histograms 
figure
%creats a 2x2 tile to place the images and histograms
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img_1)
title('Original Image')

%displayes the edited image with the histogram in the tile next to the
%orginal
nexttile
imshow(img_2)
title('Original Image with histogram equalization')

%display the histogram of the orginal image in the 3rd tile
nexttile
bar(img_edit1);
title('Original Image')

%display the histogram of the edited image in the 4th title 
nexttile
bar(img_edit2);
title('Original Image with histogram equalization')

%saves the figure as a png file 
saveas(gcf, 'tiledlayout_Question2.png');