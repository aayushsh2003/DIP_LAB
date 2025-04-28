po = imgetfile; 
I = imread(po);

% Convert the image to grayscale if it's not already
if size(I, 3) == 3
    I = rgb2gray(I);
end

% Show the grayscale image
imshow(I);

% Apply edge detection with Sobel and Canny
BW1 = edge(I, 'sobel');
BW2 = edge(I, 'canny');

% Display the results side by side
figure;
imshowpair(BW1, BW2, 'montage');
title('Sobel Filter, Canny Filter');
