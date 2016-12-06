function pic=filtre_pas_bas_ideal(im,D0)
[l,c]=size(im);

tfim=fft2(im);
tfim=fftshift(tfim);
A=magic(l);

for u=1:l
    for v=1:c
        D=sqrt(u^2+v^2);
        if D<=D0 
            h=1;
        else
            h=0;
        end
        A(u,v)=tfim(u,v)*h;
    end
end
A=ifftshift(A);
A=ifft2(A);
pic=uint8(A);
