%starts a timer to see run time
tic
%reads in requested image
img_1 = imread('university.png');
%creates an arry of values to be used for c in the power transformation
factors_for_c = [1,2,3,4,5,6,7,8,9];
%creates an arry of values to be used for y in the power transformation
factors_for_y = [.1,.2,.3,.4,.5,.6,.7,.8,.9];
%creates a for loop starting at 1 till the the end of the factor_y array
for i= 1:length(factors_for_y)
    %transform the image to double for power transformation
    new_img_1 = im2double(img_1);
    %keeps track of the current element in factors_for_c
    factor = factors_for_c(i);
    %keeps track of the current element in factors_for_y
    factor_2 = factors_for_y(i);
  %set c = 1 currently or can be set to factor for diffrent levels to test
    c = 1;%factor; 
    %set y = to the valuse of factor_2
    y = factor_2;
    %calculate the power transformation and apply it to the image
    s = c * new_img_1.^y;
    %display the image for the user
    imshow(s);
    %pause the code to allow user input
    pause;
    %creates a file name for the current factor value
    filename = sprintf('power_transformation%d.jpg', factor_2); 
    %saves the current image with the files name
    imwrite(s, filename);
end
%end of timer and will printout run time
toc
% avg run time without pause ~= .495