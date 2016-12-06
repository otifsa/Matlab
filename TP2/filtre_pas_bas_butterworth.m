function pic=filtre_pas_bas_butterworth(im,D0,n)
[l,c]=size(im);

tfim=fft2(im);
tfim=fftshift(tfim);
A=magic(l);

for u=1:l
    for v=1:c
        D=sqrt(u^2+v^2);
        h=1/(1+(D/D0)^(2*n));
        A(u,v)=tfim(u,v)*h;
    end
end
A=ifftshift(A);
A=ifft2(A);
pic=uint8(A);
