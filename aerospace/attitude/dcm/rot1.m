function R = rot1(Theta)
%% Rotation Matrix, X Axis
%
% ROT1 returns a 3x3 rotation matrix for a rotation about the x-axis with a
% user-defined rotation angle.
%
% See also: ROT2, ROT3
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
R = [1  0           0;
     0  cos(Theta)  sin(Theta);
     0 -sin(Theta)  cos(Theta)];
 
end