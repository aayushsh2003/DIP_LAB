
I = imread('team1.jpg');
J = rgb2gray(I);
[r, c] = size(J);
h = zeros(1, 256);
for i = 1:r
for j = 1:c
    t = J(i,j);
    h(t) = h(t)+1;
end
end
disp(h);
bar(h);
subplot(2,2,1), imshow(I);
title('RGB image');
subplot(2,2,2), imshow(J);
title('Gray image');
subplot(2,2,3), imhist(J);
title('Histogram using imhist');
subplot(2,2,4), bar(h, 'b');
title('Histogram calculated');