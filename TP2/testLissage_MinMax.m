clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im= lissage_MinMax(imad);
imr=uint8(im);
subplot(1,2,1);imshow(ima);title('avant');
subplot(1,2,2);imshow(imr);title('apres');
