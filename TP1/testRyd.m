clear;
clc;
ima=imread('aquitain.gif');
imad=double(ima);
imar=Rdynamique(imad);
imaru=uint8(imar);
subplot(2,2,1);
imshow(imaru);
subplot(2,2,2);
imshow(ima);
subplot(2,2,3);
plot(imhist(imaru));
subplot(2,2,4);
plot(imhist(ima));