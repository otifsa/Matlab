function [ pic ] = segmente( im)
[l,c]=size(im);
seuil=graythresh(im);
A= im2bw(im,seuil);
pic=A;
end

