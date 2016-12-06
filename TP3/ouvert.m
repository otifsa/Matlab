function pic=ouvert(im,elem)
    elemrot=rot90(rot90(elem));
    pic=imdil(imrode(im,elemrot),elem);
end
