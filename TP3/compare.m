function nom=compare(mat1,mat2)
    [l,c]=size(mat1);
    n=0;
    for i=1:l
        for j=1:c
            if (mat1(i,j)& mat2(i,j))
                n=1;
                break;
            end
        end
    end
    nom=n;
end
