function [ pic,pic1,pic2 ] = laplace(im)
    [l,c]=size(im);
    im=double(im);
    A=zeros(l);
    A1=zeros(l);
    A2=zeros(l);
  mat=[0 1 0;1 -4 1;0 1 0];
  mat1=[0 1 0;1 -8 1;0 1 0];
    v=[1 -2 1];
    for i=2:l-1
        for j=2:c-1
            win=im(i-1:i+1,j-1:j+1);
            %les filtres horiznetale et verticales 
            lx=win(2,:)*v;
            ly=v*win(:,2);
            A(i,j)=sqrt(lx^2+ly^2);
            %les filtres masque2 
            prod1=win.*mat;
            A1(i,j)=sum(prod1(:));
            %les filtres masque4 
            prod1=win.*mat1;
            A2(i,j)=sum(prod1(:));
        end
    end
    pic=uint8(A);pic1=uint8(A);pic2=uint8(A);
end
