function d = dist(x1,x2)
%% Euclidean Distance
%
% DIST finds the Euclidean distance two input vectors.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       d   =  Euclidean distance between x1 and x2
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute distance
d = sqrt( sum((x1-x2).^2) );

end