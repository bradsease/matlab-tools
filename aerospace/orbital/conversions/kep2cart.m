function [r,v] = kep2cart(e, a, i, RAAN, w, f)
%% Keplerian Elements to Cartesian Position and Velocity
%
% KEP2CART converts Keplerian orbit elements to the corresponding position
% and velocity representation.
%
%
% Input:
%       e     =  Eccentricity
%       a     =  Semimajor axis
%       i     =  Inclination (radians)
%       RAAN  =  Right ascension of the ascending node (radians)
%       w     =  Argument of perigee (radians)
%       f     =  True anomaly (radians)
%
% Output: 
%       r     =  3x1 position vector
%       v     =  3x1 velocity vector
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

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