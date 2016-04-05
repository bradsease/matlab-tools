function DCM = axisang2dcm(a, phi)
%% Euler Axis & Angle to DCM
%
% AXISANG2DCM computes a direction cosine matrix from a given principal
% axis and angle.
%
% See also: DCM2AXISANG
%
%
% Input:
%       a    =  Principal axis
%       phi  =  Principal angle
%
% Output: 
%       DCM  =  Direction cosine matrix
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute DCM from input
ax =  [ 0    -a(3)  a(2);
        a(3)  0    -a(1);
       -a(2)  a(1)  0  ];

DCM = eye(3) + sin(phi)*ax + (1-cos(phi))*ax^2;

end