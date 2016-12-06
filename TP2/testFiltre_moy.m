clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im=filtre_moy(imad,5,3);
imr=uint8(im);
subplot(1,2,1);
imshow(imr);
subplot(1,2,2);
imshow(ima);

