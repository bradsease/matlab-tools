function [r, v] = twobodyprop(t, a, e, i, RAAN, w, f)
%% Orbital Equations of Motion
%
% TWOBODYPROP propagates the two body differential equations of motion for
% a given set of Keplerian orbita elements. The central body is defined to 
% be Earth.
%
% See also: CONICSECT, TWOBODY, TWOBODYJ2
%
%
% Input:
%       t     =  Nx1 propagation time vector
%       a     =  Eccentricity
%       e     =  Semimajor axis
%       i     =  Inclination (radians)
%       RAAN  =  Right ascension of the ascending node (radians)
%       w     =  Argument of perigee (radians)
%       f     =  True anomaly (radians)
%
% Output: 
%       r     =  Nx3 set of positions
%       v     =  Nx3 set of velocities
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute Initial Conditions
[ri, vi] = KEP2CART(a,e,i,RAAN,w,f);

%% Propagate Equations of Motion
options = odeset('RelTol', 1e-12, 'AbsTol', 1e-12);
[~, rv] = ode45(@TWOBODY, t, [ri; vi], options);

%% Return State
r = rv(:, 1:3);
v = rv(:, 4:6);

end


function s_dot = TWOBODY(~, s)
%% Orbital Equation of Motion

%% Parameters
mu = 398600;
r = [s(1); s(2); s(3)];
v = [s(4); s(5); s(6)];
                             
%% Dynamics
r_dot = v;
v_dot = (-mu/norm(r)^3)*r;

%% Return
s_dot = [r_dot; v_dot];

end


function [r,v] = KEP2CART(a, e, i, RAAN, w, f)
%% Orbital Elements to Cartesian Radius and Velocity in ECI

%% Parameters
mu = 398600;
p = a*(1-e^2);

%% Position in Orbital Plane
r_pqw = [p*cos(f)/(1+e*cos(f));
         p*sin(f)/(1+e*cos(f));
         0];

%% Velocity in Orbital Plane
v_pqw = [-sqrt(mu/p)*sin(f);
         sqrt(mu/p)*(e+cos(f));
         0];

%% Rotate from Orbital Plane to ECI
IJK_PQW = [cos(RAAN)*cos(w)-sin(RAAN)*sin(w)*cos(i) -cos(RAAN)*sin(w)-sin(RAAN)*cos(w)*cos(i) sin(RAAN)*sin(i);
           sin(RAAN)*cos(w)+cos(RAAN)*sin(w)*cos(i) -sin(RAAN)*sin(w)+cos(RAAN)*cos(w)*cos(i) -cos(RAAN)*sin(i);
           sin(w)*sin(i)                            cos(w)*sin(i)                             cos(i)];

r = IJK_PQW*r_pqw;
v = IJK_PQW*v_pqw;

end