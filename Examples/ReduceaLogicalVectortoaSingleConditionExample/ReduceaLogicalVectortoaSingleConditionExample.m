%% Reduce a Logical Vector to a Single Condition  

%% 
% Create a vector of decimal values and test which values are less than
% 0.5.
A = [0.53 0.67 0.01 0.38 0.07 0.42 0.69];
B = (A < 0.5)  

%%
% The output is a vector of logical values. The |all| function reduces such
% a vector of logical values to a single condition. In this case, |B =
% all(A < 0.5)| yields logical |0|.

%% 
% This makes |all| particularly useful in |if| statements. 
%
%    if all(A < 0.5)
%        %do something
%    else
%        %do something else
%    end 
%

%%
% The code is executed depending on a single condition, rather than a
% vector of possibly conflicting conditions.

