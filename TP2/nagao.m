function pic=nagao(im)
[l,c]=size(im);
M=zeros(9);
A=magic(l);
%li=magic(3);
for i=3:l-2
    for j=3:c-2
        win=im(i-2:i+2,j-2:j+2);
        li=win(2:4,2:4);
        M(:,1)=li(:);
        li=win(1:3,1:3);
        M(:,2)=li(:);
        li=win(1:3,3:5);
        M(:,3)=li(:);
        li=win(2:4,1:3);
        M(:,4)=li(:);
        li=win(3:5,1:3);
        M(:,5)=li(:);
        li=[win(1:5,1)' win(2:4,2)' win(3,3)];
        M(:,6)=li';
        win=rot90(win);
        li=[win(1:5,1)' win(2:4,2)' win(3,3)];
        M(:,7)=li';
        win=rot90(win);
        li=[win(1:5,1)' win(2:4,2)' win(3,3)];
        M(:,8)=li';
        win=rot90(win);
        li=[win(1:5,1)' win(2:4,2)' win(3,3)];
        M(:,9)=li';
        var=std(M);
        [minvar,indice]=min(var);
        A(i,j)=mean(M(:,indice));
    end
end
pic=uint8(A);