function R = rot3(Theta)
%% Rotation Matrix, Z Axis
%
% ROT3 returns a 3x3 rotation matrix for a rotation about the z-axis with a
% user-defined rotation angle.
%
% See also: ROT1, ROT2
%
%
% Input:
%       Theta  =  Rotation magnitude
%
% Output: 
%       R      =  2x2 rotation matrix
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute DCM
R = [ cos(Theta)  sin(Theta)  0;
     -sin(Theta)  cos(Theta)  0;
      0           0           1];
 
end