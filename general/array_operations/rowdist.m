function d = rowdist(x1,x2)
%% Inter-Row Distances
%
% ROWDIST finds the Euclidean distance between rows in two arrays.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       a   =  1xN vector of inter-row distances
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Inter-Row Distances
d = sqrt( sum((x1-x2).^2, 2) );

end