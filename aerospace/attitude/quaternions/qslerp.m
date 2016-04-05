function q2 = qslerp(q0, q1, h)
%% Quaternion Interpolation with SLERP
%
% QSLERP interpolates two given quaternions based on an input parameter, h,
% with the SLERP algorithm.
%
% See also: QLERP
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

%% Compute interpolation

% Intermediate Value
PIQ = quatmult(quatinv(q0), q1);

% Quaternion Result
q2 = quatmult(q0, quatpow(PIQ, h));

end