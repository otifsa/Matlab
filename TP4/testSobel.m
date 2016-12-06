clear
clc
ima=imread('cameraman.tif');
mat=[-1 0 1;-2 0 2;-1 0 1];
mat1=[-1 -1 -1;0 0 0;1 1 1];
mat2=[0 1 0;1 -4 1;0 1 0];
im=sobel(ima,mat);
im1=laplace(ima,mat2);
im2=prewit(ima,1/2*mat1);
subplot(2,2,1);imshow(ima);title('org');
subplot(2,2,2);imshow(im);title('sobel');
subplot(2,2,3);imshow(im2);title('prewit');
subplot(2,2,4);imshow(im1);title('laplace');
