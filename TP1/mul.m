function ima= mul(im,con)
[l,c]=size(im);
A=magic(l);
a=min(min(im));
b=max(max(im));
for i=1:l 
    for j=1:c
        A(i,j)=im(i,j)*con;
    end
end
ima=A;
