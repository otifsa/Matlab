function [ pic ] = sobel(im,mat)
    [l,c]=size(im);
    im=double(im);
    mat1=rot90(mat);
    A=zeros(l);
    for i=2:l-1
        for j=2:c-1
            win=im(i-1:i+1,j-1:j+1);
            prod1=win.*mat;
            prod2=win.*mat1;
            A(i,j)=abs(sum(prod1(:)))+abs(sum(prod2(:)));
        end
    end
    pic=uint8(A);
end

