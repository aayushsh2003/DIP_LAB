I = imread('team1.jpg');
G = rgb2gray(I);
F = fft2(G);
T = ifft2(F);
subplot(2,2,1), imshow(I), title('Original image');
subplot(2,2,2), imshow(G), title('Greyscale image');
subplot(2,2,3), imshow(F), title('Fourier Transformed Image');
subplot(2,2,4), imshow(uint8(T)), title('Retrieve from FT');