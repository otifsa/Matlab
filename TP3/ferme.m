function pic=ferme(im,elem)
    elemrot=rot90(rot90(elem));
    pic=imrode(imdil(im,elemrot),elem);
end
