function pic=filtre_Pbas(im,H)
[l,c]=size(im);
[m,n]=size(H);
A=zeros(l);
m1=floor(m/2);
n1=floor(n/2);
for i=m1+1:l-m1
    for j=n1+1:c-n1
            win=im(i-m1:i+m1,j-n1:j+n1);
            mul=win.*H;
            A(i,j)=sum(mul(:));
    end;
end;
pic=A;