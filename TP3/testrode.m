
clc
imab=img;
elem=[0 0 1;1 1 1;0 0 1];
im=imrode(imab,elem);
im1=imerode(imab,strel(elem));
subplot(2,2,1);imshow(imab);title('image orig');
subplot(2,2,2);imshow(im);title('image erosion');
subplot(2,2,3);imshow(im1);title('image erosion_matlab');