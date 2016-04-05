function d = coldist(x1,x2)
%% Inter-Column Distances
%
% COLDIST finds the Euclidean distance between columns in two arrays.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       a   =  1xN vector of inter-column distances
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Inter-Column Distances
d = sqrt(sum((x1-x2).^2, 1));

end