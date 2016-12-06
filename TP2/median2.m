function pic=median2(im)
[l,c]=size(im);
A=zeros(l);
for i=3:l-2
    for j=3:c-2
            win=im(i-2:i+2,j-2:j+2);
            li=win(3,3:5);
            lc=[win(3,1) win(3,2) win(3,4) win(3,5)];
            medp=median([li lc]);
            diag1=[win(1,1) win(2,2) win(3,3) win(4,4) win(5,5)];
            diag2=[win(1,5) win(2,4) win(4,2) win(5,1)];
            medd=median([diag1 diag2]);
            med=median([medp medd im(i,j)]);
            A(i,j)=med;
    end;
end;
pic=A;