function A = unitrows(A)
%% Array Row Normalization
%
% UNITROWS normalizes each row in an array.
%
%
% Input: 
%       A  =  MxN Array
%
% Output: 
%       A  =  Row-normalized MxN array
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Row Norms
N = sqrt( sum(A.^2, 2) );

%% Normalize Columns
A = A ./ repmat(N, 1, size(A,1));

end