function his= histogramme(im)
vec=im(:)';
count=hist(vec,0:255);
his=count;

