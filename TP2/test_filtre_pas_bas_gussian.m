clear
clc
noise
ima=imread('cameraman_bruit.tif');
imad=double(ima);
im=filtre_pas_bas_gussian(ima,150);
imshow(im);title('l image apres filtrage');