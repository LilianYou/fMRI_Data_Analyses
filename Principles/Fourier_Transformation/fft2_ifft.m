img = imread('selfie.jpg','jpg');
figure(1);
imagesc(img);
colorbar

img = fft2(img);
F = fftshift(img(:,:,2));

figure(2);
I = imagesc(100*log(1+abs(fftshift(F))));
title('magnitude spectrum');
colorbar

figure(3);
A = ifft2(img)/255;
imshow(A)
colorbar