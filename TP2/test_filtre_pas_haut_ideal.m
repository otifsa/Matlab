clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im=filtre_pas_haut_ideal(ima,1);
imshow(im);title('l image apres filtrage');