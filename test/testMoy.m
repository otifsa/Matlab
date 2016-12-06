clear
clc
ima=imread('cameraman.tif');
im=imnoise(ima);
[imr,imr1]=moy(ima,3,3);
subplot(2,2,1);imshow(ima);title('orginal');
subplot(2,2,2);imshow(im);title('bruit');
subplot(2,2,3);imshow(imr);title('result med');
subplot(2,2,4);imshow(imr1);title('result moy');
