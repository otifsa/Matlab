clear
clc
ima=imread('cameraman.tif');
imad=double(ima);
im=nagao(ima);
imshow(im);