function [rdot, vdot, rvdot] = twobody(r, v)
%% Orbital Equations of Motion
%
% TWOBODY evaluates the two body differential equations of motion for a
% given position and velocity. The central body is defined to be Earth.
%
% See also: CONICSECT, TWOBODYPROP, TWOBODYJ2
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

%% Dynamics
rdot = v;
vdot = (-mu/norm(r)^3)*r;

%% Full state
rvdot = [rdot; vdot];

end