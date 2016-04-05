function a = ang(x1,x2)
%% Angle Between Vectors in Radians
%
% ANG finds the angle two input vectors in radians.
%
%
% Input: 
%       x1  =  MxN Array
%       x2  =  MxN Array
%
% Output: 
%       a   =  Angle between x1 and x2 in radians
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute angle
a = acos( dot(x1,x2)/(norm(x1)*norm(x2)) );

end