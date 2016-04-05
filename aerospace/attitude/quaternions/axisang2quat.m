function q = axisang2quat(a, phi)
%% Euler Axis and Angle to Quaternion
%
% AXISANG2QUAT computes a quaternion from a given principal axis and angle
% of rotation.
%
% See also: QUAT2AXISANG
%
%
% Input:
%       a    =  Principal axis
%       phi  =  Principal angle
%
% Output: 
%       q    =  4x1 quaternion vector
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Check Axis Validity
if ( norm(a) == 0 )
   % Assume no rotation for 0 axis
   q = [0; 0; 0; 1];
   return
elseif ( norm(a) ~= 1 )
   a = a / norm(a); 
end

%% Compute Quaternion
phi = phi/2;
q = [a(1) * sin(phi)
     a(2) * sin(phi)
     a(3) * sin(phi)
     cos(phi)];
 
end