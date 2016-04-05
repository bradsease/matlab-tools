function A = removerows(A, I)
%% Array Row Removal
%
% REMOVEROWS removes rows corresponding to the indices in I.
%
%
% Input: 
%       A  =  MxN Array
%       I  =  Indices of rows to be removed
%
% Output: 
%       A  =  Trimmed array
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Remove Ith row
A(I, :) = [];

end