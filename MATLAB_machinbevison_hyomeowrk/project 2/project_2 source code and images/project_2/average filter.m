%reads in the requested image 
img = imread('noisy_atrium.png');
%defines the sizes of the filters to be used
filter_3 = 3;
filter_5 = 5;
filter_7 = 7;

%creates a 3x3 5x5 7x7 average filters
average_3 = ones(filter_3) / (filter_3^2);
average_5 = ones(filter_5) / (filter_5^2);
average_7 = ones(filter_7) / (filter_7^2);

%applies the 3x3 5x5 7x7 filters to the iamge
filter_3_img = imfilter(img,average_3);
filter_5_img = imfilter(img,average_5);
filter_7_img = imfilter(img,average_7);

% creates a new figure to diplay the images
figure
%creats a 2x2 tile to place the images
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('orginal img');

%display the 3x3 filter image  in the second tile
nexttile
imshow(filter_3_img);
title('3x3 filter');

%display the 5x5 filter image  in the third tile
nexttile
imshow(filter_5_img);
title('5x5');

%display the 7x7 filter image  in the 4th tile
nexttile
imshow(filter_7_img);
title('7x7');

%saves the figure as a png file 
saveas(gcf, 'tiledlayout_Question4.png');