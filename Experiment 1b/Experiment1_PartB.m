% Read and convert image to grayscale
I = imread('Cat.jpg');
J = rgb2gray(I);
[r, c] = size(J);           % Get size of the grayscale image
s = r * c;                  % Total number of pixels

% Initialize histogram
h = zeros(1, 256);          % Histogram of original image
z = zeros(1, 256);          % Histogram of equalized image

% Calculate histogram of the grayscale image
for i = 1:r
    for j = 1:c
        intensity = J(i, j);
        h(intensity + 1) = h(intensity + 1) + 1; % MATLAB indexing starts from 1
    end
end

% Calculate PDF and CDF
pdf = h / s;
cdf = cumsum(pdf);          % CDF using built-in cumulative sum
new_intensity = round(cdf * 255);  % Scale CDF to [0, 255]

% Apply histogram equalization
b = zeros(r, c);  % Initialize equalized image
for i = 1:r
    for j = 1:c
        original = J(i, j);
        equalized = new_intensity(original + 1);
        b(i, j) = equalized;
        z(equalized + 1) = z(equalized + 1) + 1;  % Update equalized histogram
    end
end

% Convert b to uint8 for display
b = uint8(b);

% Display results
figure;
subplot(2, 2, 1), imshow(J), title('Original Grayscale Image');
subplot(2, 2, 2), bar(h, 'b'), title('Original Histogram'), xlim([0 255]);
subplot(2, 2, 3), imshow(b), title('Histogram Equalized Image');
subplot(2, 2, 4), bar(z, 'b'), title('Equalized Histogram'), xlim([0 255]);
