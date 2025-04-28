
imgetfile;
I = imread('team1.jpg');
T = imtranslate(I,[50 50]);
O = imrotate(I,90);
S1 = imresize(I,[300,300]);
S2 = imresize(I,0.5);
C = imcrop(I,[15 68 600 500]);
subplot(2,3,1), imshow(I), title('Original image');
subplot(2,3,2), imshow(T), title('Translate(50,50)');
subplot(2,3,3), imshow(O), title('Rotation(90)');
subplot(2,3,4), image(S1), title('Scaling(300,300)');
subplot(2,3,5), image(S2), title('Scaling(0.5)');
subplot(2,3,6), imshow(C), title('Croping');