function pic=median3(im,m,n)
[l,c]=size(im);
m1=floor(m/2);
n1=floor(n/2);
A=zeros(l);
for i=m1+1:l-m1
    for j=n1+1:c-n1
            win=im(i-m1:i+m1,j-n1:j+n1);
            li=[win(i,:) win(j-n1:j-1,j) win(j+1:j+n1,j)];
            %%lc=win(:,j);
            %%lc(floor(j/2)+1)=[];
            plu=[li,lc];
            medp=median(plu);
            diag1=diag(win);
            win90=rot90(win);
            diag2=diag(win90);
            diag2(floor(j/2)+1)=[];     
            medd=median([diag1 diag2]);
            med=median([medp medd im(i,j)]);
            A(i,j)=med;
    end;
end;
pic=A;