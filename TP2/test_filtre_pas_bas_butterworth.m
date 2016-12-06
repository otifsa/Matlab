clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im=filtre_pas_bas_butterworth(ima,250,2);
imshow(im);title('l image apres filtrage');