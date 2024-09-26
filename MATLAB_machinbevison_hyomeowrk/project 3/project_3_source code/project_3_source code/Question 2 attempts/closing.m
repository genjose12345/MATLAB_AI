img = imread("fingerprint.jpg");
img_histo = imhist(img);


threshold_value = 100;
img_2 = img < threshold_value;

erosion_filter = [1 1 1; 1 1 1; 1 1 1];
erosion_filter_2 = [0 1 0; 1 1 1; 0 1 0];
A= imclose(img_2,erosion_filter);
B = imclose(img_2,erosion_filter_2);
dilation_filter = [0 1 0; 1 1 1; 0 1 0];
dilation_filter_2 = [1 1 1; 1 1 1; 1 1 1];
C = imopen(A,dilation_filter);
D = imopen(B,dilation_filter);
E = imopen(A,dilation_filter_2);
F = imopen(B,dilation_filter_2);
imshow(C);
pause;
imshow(D);
pause;
imshow(E);
pause;
imshow(F);
pause;