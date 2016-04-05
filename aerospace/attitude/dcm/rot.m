function DCM = rot(theta)
%% Two Dimensional Rotation Matrix
%
% ROT returns a 2x2 rotation matrix with a user-defined angle of rotation.
%
%
% Input:
%       theta  =  Rotation magnitude
%
% Output: 
%       DCM    =  2x2 rotation matrix
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute DCM
DCM = [cos(theta) -sin(theta);
       sin(theta)  cos(theta)];
   
end