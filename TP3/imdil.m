function pic =imdil(im,elem)
    [l,c]=size(im);
    [le,ce]=size(elem);
    u=floor(le/2);
    v=floor(ce/2);
    A=zeros(l);
    elem=rot90(rot90(elem));

     for i=1+u:l-u
         for j=1+v:c-v
             win=im(i-u:i+u,j-v:j+v);
             if(any(win(logical(elem))))
             A(i,j)=1;
             end
         end
     end
 
 pic=uint8(A);
end

