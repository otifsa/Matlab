clear
clc
ima=imread('binary.png');
imab=im2bw(ima);
elem=[0 0 1;1 1 1;0 0 1];
im=imdil(imab,elem);
subplot(1,2,1);imshow(imab);
subplot(1,2,2);imshow(im);