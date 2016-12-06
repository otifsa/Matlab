function pic=imdilg(im,elem)
    [l,c]=size(im);
    [le,ce]=size(elem);
    u=floor(le/2);
    v=floor(ce/2);
    A=zeros(l);
     for i=1+u:l-u
         for j=1+v:c-v
             win=im(i-u:i+u,j-v:j+v);
             mat=win(logical(elem));
             A(i,j)=max(mat(:));
         end
     end
     pic=uint8(A);
end