function N = colnorm(A, varargin)
%% Array Column p-Norm
%
% COLNORM computes the p-norm of columns in an array.
%
%
% Input: 
%       A  =  MxN Array
%
% Output: 
%       N  =  1xN vector of column p-norms
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Check Input
if nargin == 1
    p = 2;
elseif nargin == 2
    p = varargin{1};
    if (p < 1)
       error('Invalid norm parameter ( p < 1 ).'); 
    end
else
    error('Too many input arguments.');
end

%% Compute Column p-Norms
N = ( sum(A.^p, 1) ).^(1/p);

end