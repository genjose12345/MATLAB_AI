%reads in requested  image
img = imread("moon.jpg");
%creates 3 diffrent types of filters to be used on the orginal image
laplacian_filter = [0 1 0; 1 -4 1; 0 1 0];
laplacian_filter_2 = [0 -1 0; -1 5 -1; 0 -1 0];
laplacian_filter_3 = [1 1 1; 1 -8 1; 1 1 1];

%applies all 3 filters on image 
laplacian_img = imfilter(img,laplacian_filter);
laplacian_img_2 = imfilter(img,laplacian_filter_2);
laplacian_img_3 = imfilter(img,laplacian_filter_3);


% creates a new figure to diplay the images
figure
%creats a 2x2 tile to place the images
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('orginal img');

%display the simple laplacian filter image  in the second tile
nexttile
imshow(laplacian_img);
title('simple laplacian');

%display the sharpened image useing laplacian in the third tile
nexttile
imshow(laplacian_img_2);
title('sharpened image');

%display another variant of Laplacian in the fourth tile 
nexttile
imshow(laplacian_img_2);
title('variant of laplacian');
%saves the figure as a png file 
saveas(gcf, 'Laplacian.png');
