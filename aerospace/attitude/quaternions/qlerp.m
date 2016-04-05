function q2 = qlerp(q0, q1, h)
%% Quaternion Linear Interpolation
%
% QLERP linearly interpolates two given quaternions based on an input
% parameter, h.
%
% See also: QSLERP
%
%
% Input:
%       q0  =  Initial quaternion
%       q1  =  Final quaternion
%       h   =  Blending parameter (0-1)
%
% Output: 
%       q2  =  Interpolated quaternion
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Linear Interpolation
q2 = q0 * ( 1 - h ) + q1 * h;

%% Normalize Result
q2 = q2 / norm(q2);

end