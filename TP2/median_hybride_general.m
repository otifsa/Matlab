function res=median_hybride_general(img,L)
[M,N]=size(img);
img=double(img);
v=floor(L/2);
%**************************************************************************
 for i=v+1:M-v
    for j=v+1:N-v
        fen=img(i-v:i+v,j-v:j+v);
        
        %******************************************************************
        plus=fen(i,:);
        A=fen(:,j);
        plus(v+1)=[]; 
        medplus=median(cat(2,plus,A));
        
        %******************************************************************
        diago=diag(fen);
        diago(v+1)=[];
         meddiag=median([diago diag(rot90(fen))]);
         
         %*****************************************************************
        img(i,j)=median([ medplus meddiag fen(v+1,v+1)]);
    end
end
res=uint8(img);