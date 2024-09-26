img = imread("fingerprint.jpg");
img_histo = imhist(img);



threshold_value = 100;
img_2 = img < threshold_value;
erosion_filter = [1 1 1; 1 1 1; 1 1 1];
erosion_filter_2 = [0 1 0; 1 1 1; 0 1 0];
A= imerode(img_2,erosion_filter);
B = imerode(img_2,erosion_filter_2);
imshow(A);
pause;
imshow(B);
pause;