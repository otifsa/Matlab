clear;
clc;
ima=imread('cameraman.tif');
imad=double(ima);
imaex=mul(imad,0.3);
imaexu=uint8(imaex);
subplot(1,2,1);
imshow(imaexu);
subplot(1,2,2);
imshow(ima);