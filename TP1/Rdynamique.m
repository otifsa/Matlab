function ima= Rdynamique(im)
[l,c]=size(im);
A=magic(l);
a=min(min(im));
b=max(max(im));
for i=1:l 
    for j=1:c
        A(i,j)=255*(im(i,j)-a)/(b-a);
    end
end
ima=A;
