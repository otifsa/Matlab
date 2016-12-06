clear
clc
pic=imread('cameraman.tif');
picn=imnoise(pic);
imwrite(picn,'cameraman_bruit.tif');
