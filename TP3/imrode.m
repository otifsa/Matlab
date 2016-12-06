function pic=imrode(im,elem)
    [l,c]=size(im);
    [li,ci]=size(elem);
    u=floor(li/2);
    v=floor(ci/2);
    A=zeros(l);
    for i=1+u:l-u
        for j=1+v:c-v
            win=im(i-u:i+u,j-v:j+v);
            A(i,j)=isequal(elem&win,elem);   
        end
    end
    pic=A;
end