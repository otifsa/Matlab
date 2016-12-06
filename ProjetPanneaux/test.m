I = imread('BYes_Sourdun_ImageThermique_27p (1).jpg');
I1=rgb2gray(I);
regions = detectMSERFeatures(I1);
subplot(1,2,2);imshow(I1);hold on;plot(regions(22));title('image apres traitement');
subplot(1,2,1);imshow(I1);title('image avant traitement');
