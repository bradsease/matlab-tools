function A = unitcols(A)
%% Array Column Normalization
%
% UNITCOLS normalizes each column in an array.
%
%
% Input: 
%       A  =  MxN Array
%
% Output: 
%       A  =  Column-normalized MxN array
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Column Norms
N = sqrt( sum(A.^2, 1) );

%% Normalize Columns
A = A ./ repmat(N, size(A,1), 1);

end