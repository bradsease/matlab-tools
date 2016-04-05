function Omega = dcm2rate(R1, R2, DT)
%% Angular Rate from Two DCMs and Time Step
%
% DCM2RATE computes the angular rate from two direction-cosine matrices and
% a time step, assuming a constant angular rate.
%
%
% Input: 
%       R1     =  3x3 direction-cosine matrix
%       R2     =  3x3 direction-cosine matrix
%       DT     =  Time step (s)
%
% Output: 
%       Omega  =  3x1 angular rate vector (rad/s)
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute Rotation Axis & Angular Displacement
Delta = R1 * R2';
[Axis, Angle] = D2AA(Delta);

%% Compute Omega
Omega = Axis * (Angle/DT);

end

function [Axis, Angle] = D2AA(A)
%% DCM to Axis-Angle

%% Principal Angle
Angle = acos(0.5*(trace(A)-1));

%% Zero-Angle Check
if ( Angle < 1e-8 )
    Angle = 0;
    Axis  = [];
    return
end

%% Principal Axis
ax   = (A-A')/(2*sin(Angle));
Axis = [ax(6); -ax(3); ax(2)];

end