function pic=median1(im,m,n)
[l,c]=size(im);
A=zeros(l);
m1=floor(m/2);
n1=floor(n/2);
for i=m1+1:l-m1
    for j=n1+1:c-n1
            win=im(i-m1:i+m1,j-n1:j+n1);
            med=median(win(:));
            A(i,j)=med;
    end;
end;
pic=A;