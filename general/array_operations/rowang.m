function a = rowang(x1,x2)
%% Inter-Row Angles in Radians
%
% ROWANG finds the angle between rows in two arrays.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       a   =  1xN vector of inter-row angles
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute Inter-Row Angles
a = acos( sum(x1.*x2, 2) ./ (rownorm(x1).*rownorm(x2)) );

end