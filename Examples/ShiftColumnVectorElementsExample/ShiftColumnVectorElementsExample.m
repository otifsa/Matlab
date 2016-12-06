%% Shift Column Vector Elements  

%% 
% Create a numeric column vector. 
A = (1:10)'  

%% 
% Use |circshift| to shift the elements by three positions. 
Y = circshift(A,3) 

%%
% The result, |Y|, has the same elements as |A| but they are in a different
% order.   

