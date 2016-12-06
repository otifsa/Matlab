clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im=filtre_pas_bas_ideal(ima,250);
imshow(im);title('l image apres filtrage');