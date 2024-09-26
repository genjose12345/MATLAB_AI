% reads in requested image
img = imread("cell.jpg");
%turns the image into gray scale
gray_img = rgb2gray(img);
%creates the threshold value we will use later
threshold_value = 10;
%applies threshold value to image
img_2 = gray_img < threshold_value;
%inverts the image to let bwconncomp function count cells properly
img_3 = ~img_2;
%creates the function we will use to count each cell with a 8 connectivity
connected_componets = bwconncomp(img_3,8);
%counts the tootal number of cells 
total_cells = connected_componets.NumObjects;
%displays the total number of cells
disp(['Total number of cells:', num2str(total_cells)]);
%grabs the area and number of pixels from each cell
stats = regionprops(connected_componets,'area','PixelIdxList');
%displayes each cell and their area in pixels
for i = 1:length(stats)
    disp(['Area of cell ' , num2str(i),': ',num2str(stats(i).Area), ' pixels']);
end
%displays the biggest cell
disp(['Biggest cell ' , num2str(15),': ',num2str(stats(15).Area), ' pixels']);
%creates a binary image filled with false values
cell_15 = false(size(img_3));
%fills the binary image created with only truth values equal to the pixel
%values of the biggest cell
cell_15(stats(15).PixelIdxList) = true;

% creates a new figure to diplay the images 
figure
%creats a 2x2 tile to place the images 
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('Original Image');

%display the binary image  in the second tile
nexttile
imshow(img_2);
title('binary image afther inverting');

%display the binary image afther inverting image in the thrid tile
nexttile
imshow(img_3);
title('binary image afther inverting');

%display the biggest cell in the fourth tile
nexttile
imshow(cell_15);
title('biggest cell');

%saves the figure as a png file 
saveas(gcf,'Question3.png');