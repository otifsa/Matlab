
clc
%%ima=imread('binary.png');
imab=img;
elem=[0 0 1;1 1 1;0 0 1];
im=imdil(imab,elem);
im1=imrode(imab,elem);
subplot(2,2,1);imshow(imab);title('image orig');
subplot(2,2,2);imshow(im);title('image dila');
subplot(2,2,3);imshow(im1);title('image erosion');