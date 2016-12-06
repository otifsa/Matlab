clear
clc
ima=imread('cameraman.tif');
imad=double(ima);
elem=[0 0 1;1 1 1;0 0 1];
im=imdilg(imad,elem);
im1=imrodeg(imad,elem);
im2=im-im1;
subplot(2,2,1);imshow(ima);title('pic orig');
subplot(2,2,2);imshow(im);title('pic dila');
subplot(2,2,3);imshow(im1);title('pic erosion');
subplot(2,2,4);imshow(im2);title('gradian');
