function A = removecols(A, I)
%% Array Column Removal
%
% REMOVECOLS removes columns corresponding to the indices in I.
%
%
% Input: 
%       A  =  MxN Array
%       I  =  Indices of columns to be removed
%
% Output: 
%       A  =  Trimmed array
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Remove Ith Column
A(:, I) = [];

end