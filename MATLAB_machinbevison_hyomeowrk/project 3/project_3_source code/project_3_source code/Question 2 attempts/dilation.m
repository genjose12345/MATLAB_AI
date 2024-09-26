
img = imread("fingerprint.jpg");
img_histo = imhist(img);


threshold_value = 100;
img_2 = img < threshold_value;

dilation_filter = [0 1 0; 1 1 1; 0 1 0];
dilation_filter_2 = [1 1 1; 1 1 1; 1 1 1];
dilation_filter_3 = [0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0];
dilation_filter_4 = [1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1];

A = imopen(img_2,dilation_filter);
B = imopen(img_2,dilation_filter_2);
C = imopen(img_2,dilation_filter_3);
D = imopen(img_2,dilation_filter_4);
E = imdilate(img_2,dilation_filter);
F = imdilate(img_2,dilation_filter_2);
G = imdilate(img_2,dilation_filter_3);

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
bar(img_histo);
title('histograph');

%display the 3x3 filter image  in the second tile
nexttile
imshow(img_2);
title('to binary');

%display the 3x3 filter image  in the second tile
nexttile
imshow(F);
title('dilation');

%{
nexttile
imshow(B);
title('dilation');

nexttile
imshow(C);
title('dilation');

nexttile
imshow(D);
title('dilation');

nexttile
imshow(E);
title('dilation');

nexttile
imshow(A);
title('dilation');

nexttile
imshow(G);
title('dilation');

nexttile
imshow(H);
title('dilation');
pause;
%}


