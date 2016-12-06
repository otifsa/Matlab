function ima= expg(im,gamma)
[l,c]=size(im);
A=magic(l);
for i=1:l 
    for j=1:c
        A(i,j)=255*im(i,j)^(1/gamma);
    end
end
ima=A;
