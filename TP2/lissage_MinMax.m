function pic=lissage_MinMax(im)
[l,c]=size(im);
A=zeros(l);
for i=2:l-1
    for j=2:c-1
            win=im(i-1:i+1,j-1:j+1);
            minw=min(win(:));
            maxw=max(win(:));
            moy=(maxw+minw)/2;
            if(im(i,j)<=moy)
                A(i,j)=minw;
            else
                A(i,j)=maxw;
            end;
    end;
end;
pic=A;