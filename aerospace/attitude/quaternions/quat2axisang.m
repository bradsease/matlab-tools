function [a, phi] = quat2axisang(q)
%% Quaternion to Euler Axis and Angle
%
% QUAT2AXISANG computes a principal axis and angle of rotation from a give
% quaternion.
%
% See also: AXISANG2QUAT
%
%
% Input:
%       q    =  4x1 quaternion vector
%
% Output: 
%       a    =  Principal axis
%       phi  =  Principal angle
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute principal angle
phi = 2*acos(q(4));

%% Compute principal axis
if (phi ~= 0)
    a = [q(1); q(2); q(3)] / sin(phi/2);
else
    % No rotation -- undefined axis
    a = [0; 0; 0];
end

end