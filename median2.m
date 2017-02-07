function im=median2(ima,a,b)
[l,c]=size(ima);
ima=double(ima);
im=zeros(l,c);
a1=floor(a/2);
b1=floor(b/2);
id=logical(eye(a,b));
for i=1+a1:l-a1
    for j=1+b1:c-b1
    win=ima(i-a1:i+a1,j-b1:j+b1);
    med1=median([win(a1,:),win(:,b1)']);
    med2=median(win(id|rot90(id)));
    med=median([med1,med2,ima(i,j)]);
    im(i,j)=med;
    end
end
im=uint8(im);