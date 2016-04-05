function N = rownorm(A, varargin)
%% Array Row p-Norm
%
% ROWNORM computes the p-norm of rows in an array.
%
%
% Input: 
%       A  =  MxN Array
%       p  =  Optional norm type (default = 2)
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
N = ( sum(A.^p, 2) ).^(1/p);

end