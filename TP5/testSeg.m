clear
clc
ima=imread('objets.png');
im=segmente1(ima,150,200);

subplot(1,3,1);imshow(ima);title('org');
subplot(1,3,2);histogram(ima);title('histo');
subplot(1,3,3);imshow(im);title('seg');