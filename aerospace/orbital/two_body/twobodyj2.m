function [rdot, vdot, rvdot] = twobodyj2(r, v)
%% Orbital Equations of Motion with J2
%
% TWOBODYJ2 evaluates the two body differential equations of motion with 
% the J2 perturbation for a given position and velocity. The central body 
% is defined to be Earth.
%
% See also: CONICSECT, TWOBODY, TWOBODYPROP
%
%
% Input:
%       r      =  3x1 position vector
%       v      =  3x1 velocity vector
%
% Output: 
%       rdot   =  3xN set of position derivatives
%       vdot   =  3xN set of velocity derivatives
%       rvdot  =  6xN set of full state derivatives
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Orbital parameters
mu = 398600;
J2 = 0.0010826267;
Re = 6378;
d = norm(r);

a2 = ((-3*mu*J2*Re^2)/(2*d^5))* [r(1)*(1 - 5*r(3)^2/d^2);
                                 r(2)*(1 - 5*r(3)^2/d^2);
                                 r(3)*(3 - 5*r(3)^2/d^2)];
                             
%% Dynamics
rdot = v;
vdot = (-mu/norm(r)^3)*r + a2;

%% Return
rvdot = [rdot; vdot];

end