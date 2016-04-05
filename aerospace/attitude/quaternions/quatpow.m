function qp = quatpow(q, t)
%% Quaternion Exponentiation
%
% QUATPOW raises a quaternion to a given power.
%
% See also: QUATMULT
%
%
% Input:
%       q   =  4x1 input quaternion
%       t   =  Scalar exponent
%
% Output: 
%       qp  =  4x1 quaternion result
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Find Axis / Angle
[a, phi] = quat2axisang(q);

%% Compute q^t
phi = t * phi / 2;
qp = [a(1) * sin(phi)
      a(2) * sin(phi)
      a(3) * sin(phi)
      cos(phi)];

end