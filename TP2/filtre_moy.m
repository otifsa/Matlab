function pic=filtre_moy(im,m,n)
[l,c]=size(im);
A=zeros(l);
m1=floor(m/2);
n1=floor(n/2);
for i=m1+1:l-m1
    for j=n1+1:c-n1
            win=im(i-m1:i+m1,j-n1:j+n1);
            A(i,j)=mean(win(:));
    end;
end;
pic=A;