function a = colang(x1,x2)
%% Inter-Column Angles in Radians
%
% COLANG finds the angle between columns in two arrays.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       a  =  1xN vector of inter-column angles
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Inter-Column Angles
a = acos( sum(x1.*x2) ./ (colnorm(x1).*colnorm(x2)) );

end