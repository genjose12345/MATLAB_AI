img = imread("fingerprint.jpg");
img_histo = imhist(img);

threshold_value = 100;
img_2 = img < threshold_value;



dilation_filter = [0 1 0; 1 1 1; 0 1 0];
dilation_filter_2 = [1 1 1; 1 1 1; 1 1 1];
j = imopen(img_2,dilation_filter);
k = imopen(img_2,dilation_filter_2);
erosion_filter = [1 1 1; 1 1 1; 1 1 1];
erosion_filter_2 = [0 1 0; 1 1 1; 0 1 0];
A= imclose(j,erosion_filter);
B = imclose(j,erosion_filter_2);
C = imclose(k,erosion_filter);
D = imclose(k,erosion_filter_2);
imshow(A);
pause;
imshow(B);
pause;
imshow(C);
pause;
imshow(D);
pause;