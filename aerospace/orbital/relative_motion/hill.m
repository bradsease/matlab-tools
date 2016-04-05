function [x, v] = hill(x0, v0, t, rc)
%% Hill's Relative Equations of Motion
%
% HILL computes the position and velocity of a target spacecraft relative
% to a given chief at time t according to hill's approximate equations of
% motion.
%
%
% Input:
%       x0  =  Initial relative position
%       v0  =  Initial relative velocity
%       t   =  Final time
%       rc  =  Radius of the chief's orbit
%
% Output: 
%       x   =  1x3 position at time t
%       v   =  1x3 velocity at time t
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute mean motion
w = sqrt(398600/rc^3);

%% Relative position equations
x(1) = (v0(1)/w)*sin(w*t) -...
       (3*x0(1) + 2*v0(2)/w)*cos(w*t) +...
       (4*x0(1) + 2*v0(2)/w);
   
x(2) = (6*x0(1) + 4*v0(2)/w)*sin(w*t) +...
       (2*v0(1)/w)*cos(w*t) -...
       (6*w*x0(1) + 3*v0(2))*t + (x0(2) - 2*v0(1)/w);

x(3) = x0(3)*cos(w*t) + (v0(3)/w)*sin(w*t);

%% Velocity Equations
v(1) = v0(1)*cos(w*t) + (3*w*x0(1) + 2*v0(2))*sin(w*t);

v(2) = (6*w*x0(1) + 4*v0(2))*cos(w*t) -...
       2*v0(1)*sin(w*t) - (6*w*x0(1) + 3*v0(2));
   
v(3) = -x0(3)*w*sin(w*t) + v0(3)*cos(w*t);

end