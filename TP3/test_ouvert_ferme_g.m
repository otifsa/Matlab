clear
clc
ima=imread('cameraman.tif');
imad=double(ima);
elem=[0 0 1;1 1 1;0 0 1];
im=ouvertg(imad,elem);
im1=fermeg(imad,elem);
im2=uint8(imopen(imad,elem));
im3=uint8(imclose(imad,elem));

if(im==im2) 
    disp('ok');
end
subplot(2,2,1);imshow(im);title('ouvert');
subplot(2,2,2);imshow(im2);title('ouvert_mat');
subplot(2,2,3);imshow(im1);title('ferme');
subplot(2,2,4);imshow(im3);title('ferme_mat');