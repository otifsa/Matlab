function ima= logc(im)
[l,c]=size(im);
A=magic(l);
a=min(min(im));
b=max(max(im));
for i=1:l 
    for j=1:c
        A(i,j)=255*log(im(i,j)+1)/log(255);
    end
end
ima=A;
