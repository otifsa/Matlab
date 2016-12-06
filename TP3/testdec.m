clear
clc
ima=imread('binary.png');
imab=im2bw(ima);
elem1=[0 0 1;1 1 1;0 1 1];
elem2=[0 1 1;1 1 1;0 0 1];

e1=imrode(imab,imdil(elem1,elem2));
e2=imrode(imrode(imab,elem1),elem2);

if(isequal(e2,e1))
    disp('ok');
else
    disp('not');
end
