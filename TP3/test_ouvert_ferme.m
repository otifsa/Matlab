clc
ima=imread('text.png');
elem=[0 0 1;1 1 1;0 0 1];
im1=ouvert(ima,elem);
im2=ferme(ima,elem);
im3=imdil(ima,elem)-imrode(ima,elem);
subplot(2,2,1);imshow(ima);title('image orig');
subplot(2,2,2);imshow(im1);title('image ouvert');
subplot(2,2,3);imshow(im2);title('image ferme');
subplot(2,2,4);imshow(im3);title('contour');