function [a, phi] = dcm2axisang(A)
%% DCM to Euler Axis & Angle
%
% DCM2AXISANG computes the principal angle and axis of a given direction
% cosine matrix.
%
% See also: AXISANG2DCM
%
%
% Input:
%       DCM  =  Direction cosine matrix
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
phi = acos(0.5*(trace(A)-1));

%% Compute principal axis
if (phi ~= 0)
    a = (0.5/sin(phi)) * [A(3,2) - A(2,3);
                          A(1,3) - A(3,1);
                          A(2,1) - A(1,2)];
else
    a = [0;0;0];
end

end