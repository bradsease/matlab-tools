function R = quat2dcm(q)
%% Quaternion to DCM
%
% QUAT2DCM computes a direction cosine matrix from a given quaternion.
%
% See also: DCM2QUAT
%
%
% Input:
%       q  =  4x1 quaternion vector
%
% Output: 
%       A  =  3x3 direction cosine matrix
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute DCM
R = [1-2*(q(2)^2)-2*(q(3)^2) 2*q(1)*q(2)+2*q(4)*q(3) 2*q(1)*q(3)-2*q(4)*q(2);
     2*q(1)*q(2)-2*q(4)*q(3) 1-2*(q(1)^2)-2*(q(3)^2) 2*q(2)*q(3)+2*q(4)*q(1);
     2*q(1)*q(3)+2*q(4)*q(2) 2*q(2)*q(3)-2*q(4)*q(1) 1-2*(q(1)^2)-2*(q(2)^2)];
 
end