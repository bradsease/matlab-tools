function v = midpts(v)
%% Vector Midpoints
%
% MIDPTS computes a scalar midpoint value halway between each element in 
% a vector. 
%
%
% Input:
%       v  =  Nx1 input vector
%
% Output: 
%       v  =  (N-1)x1 midpoint vector
%
%
% Author: Brad Sease
% Last Modified: April 1, 2016
%
%

%% Compute midpoints
v = v(1:end-1) + diff(v)/2;

end