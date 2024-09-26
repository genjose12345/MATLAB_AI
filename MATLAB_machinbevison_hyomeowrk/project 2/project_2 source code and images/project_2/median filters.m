%reads in the requested image
img = imread('noisy_atrium.png');
%defines the sizes of the filters to be used
filter_3 = [3 3];
filter_5 = [5 5];
filter_7 = [7 7];
%applies the 3x3 5x5 7x7 filters to the iamge useing the medfilt2 function
median_3 = medfilt2(img,filter_3);
median_5 = medfilt2(img,filter_5);
median_7 = medfilt2(img,filter_7);

% creates a new figure to diplay the images
figure
%creats a 2x2 tile to place the images
tiledlayout(2,2)
%display the orginal image in the first tile
imshow(img);
title('orginal img');

%display the 3x3 filtered image in the second tile
nexttile
imshow(median_3);
title('3x3  median filter');

%display the 5x5 filtered image in the 3rd tile
nexttile
imshow(median_5);
title('5x5 median filter');

%display the 7x7 filtered image in the 4th tile
nexttile
imshow(median_7);
title('7x7 median filter');

%saves the figure as a png file 
saveas(gcf, 'tiledlayout_Question5.png');