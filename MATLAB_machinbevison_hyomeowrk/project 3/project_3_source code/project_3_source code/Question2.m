% reads in requested image
img = imread("fingerprint.jpg");
%creates a histogram of the image 
img_histo = imhist(img);
%creates a threshold value to be used 
threshold_value = 100;
%applies threshold to the image
img_2 = img < threshold_value;
%creates a set of structuring elements to be used
dilation_filter = [0 1 0; 1 1 1; 0 1 0];
dilation_filter_2 = [1 1 1; 1 1 1; 1 1 1];
dilation_filter_3 = [0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0];
dilation_filter_4 = [1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1];

%creates a set of structuring elements to be used
erosion_filter = [1 1 1; 1 1 1; 1 1 1];
erosion_filter_2 = [0 1 0; 1 1 1; 0 1 0];

%diffrent test ran and picking the best image out of each test below
%test below apply the filters created above to each image below and the
%images afther
%A = imopen(img_2,dilation_filter);
%B = imopen(img_2,dilation_filter_2);
%C = imopen(img_2,dilation_filter_3);
%D = imopen(img_2,dilation_filter_4);
%E = imdilate(img_2,dilation_filter);
F = imdilate(img_2,dilation_filter_2);
%G = imdilate(img_2,dilation_filter_3);

%H= imerode(img_2,erosion_filter);
%I = imerode(img_2,erosion_filter_2);
J= imclose(img_2,erosion_filter);
%K = imclose(img_2,erosion_filter_2);

L = imdilate(J,dilation_filter);
%M = imdilate(J,dilation_filter_2);
%N = imdilate(J,dilation_filter_3);
%O = imdilate(J,dilation_filter_4);
%P = imopen(J,dilation_filter);
%Q = imopen(J,dilation_filter_2);
%R = imopen(J,dilation_filter_3);
%S = imopen(J,dilation_filter_4);

%T = imclose(J,erosion_filter);
U = imclose(J,erosion_filter_2);

%V = imerode(J,erosion_filter);
%W = imerode(J,erosion_filter_2);

%X = imerase(J,erosion_filter);
%Y = imerase(J,erosion_filter_2);
%Z =imdilate(J,dilation_filter);
AA = imdilate(J,dilation_filter_2);
%AB = imdilate(J,dilation_filter_3);
%AC = imdilate(J,dilation_filter_4);

%creats a 2x2 tile to place the images
figure
tiledlayout(2,2)
%display the orginal image in the first tile
nexttile
imshow(img);
title('orginal image');

nexttile
bar(img_histo);
title('histogram of orginal image');

nexttile
imshow(img_2);
title('orginal image with threshold applied');

nexttile
imshow(F);
title('first dilation');
pause;

%saves the figure as a png file 
saveas(gcf, 'Question2_orginal.png');


%creats a 2x2 tile to place the images
figure
tiledlayout(2,2)
nexttile
imshow(J);
title('second erosion');

nexttile
imshow(L);
title('third dilation');

nexttile
imshow(U);
title('fourth erosion');

nexttile
imshow(AA);
title('5th dilation');
%saves the figure as a png file 
saveas(gcf, 'Question2_Test.png');