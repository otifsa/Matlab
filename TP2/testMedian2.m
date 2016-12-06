clear
clc
noise
ima=imread('cameraman.tif');
imab=imread('cameraman_bruit.tif');
imad=double(imab);
im1=median2(imad);
subplot(2,2,1);imshow(ima);title('original');
subplot(2,2,2);imshow(imab);title('bruit');
subplot(2,2,3);imshow(uint8(im1));title('median');
