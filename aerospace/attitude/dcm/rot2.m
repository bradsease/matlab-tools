function R = rot2(Theta)
%% Rotation Matrix, Y Axis
%
% ROT2 returns a 3x3 rotation matrix for a rotation about the y-axis with a
% user-defined rotation angle.
%
% See also: ROT1, ROT3
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
R = [cos(Theta)  0  -sin(Theta);
     0           1   0;
     sin(Theta)  0   cos(Theta)];
 
end