%starts a timer to see run time
tic
%reads in requested image
img_1 = imread('university.png');
%creates an array of factors to be used in log transofrmation
factors = [1,2,3,4,5,6,7,8,9];
%creates a for loop starting at 1 till the the end of the factor array
for i= 1:length(factors)
    %transform the image to double for log transformation
    new_img_1 = im2double(img_1);
    %keeps track of the current element in the array for later use
    factor = factors(i);
    %set c = to the current factor value
    c = factor;
    %calculates the log transformation formula and applies to image
    s = c * log(1+ new_img_1);
    %displayes the image for the user
    imshow(s);
    %pauses the code to allow user input
    pause;
    %creates the file name with its factor number used
    filename = sprintf('log_transformation%d.jpg', factor); 
    %will save the images to local file with their name and factor number
    imwrite(s, filename);
end
%end of timer and will print out run time
toc
% avg run time wihtout pause = ~ .467
