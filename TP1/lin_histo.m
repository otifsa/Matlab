function ima= lin_histo(im)
[l,c]=size(im);
A=magic(l);
minp=min(min(im));
maxp=max(max(im));
h=histogramme(im);
C=cumsum(h)/(l*c);
for i=1:l 
    for j=1:c
        A(i,j)=(maxp-minp)*C(im(i,j))+minp;
    end
end
ima=A;
