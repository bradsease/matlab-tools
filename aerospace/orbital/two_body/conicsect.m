function r = conicsect(a, e, i, RAAN, w, step)
%% Conic Section from Orbital Elements
%
% CONICSECT computes the conic section corresponding to a given set of
% orbital elements.
%
% See also: TWOBODY, TWOBODYPROP, TWOBODYJ2
%
%
% Input:
%       e     =  Eccentricity
%       a     =  Semimajor axis
%       i     =  Inclination (degrees)
%       RAAN  =  Right ascension of the ascending node (degrees)
%       w     =  Argument of perigee (degrees)
%       step  =  Angular resolution of the conic section
%
% Output: 
%       r     =  3xN set of position coordinates
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Convert to radians
D2R = pi/180;
i = i*D2R;
RAAN = RAAN*D2R;
w = w*D2R;

%% Compute x,y,z in perifocal
theta = [ 0:step:2*pi 0 ];
r = a*(1-e^2) ./ (1+e*cos(theta));
x = r.*cos(theta);
y = r.*sin(theta);
z = zeros(size(x));

%% Rotate into ECI
ECI_PQW = [cos(RAAN)*cos(w)-sin(RAAN)*sin(w)*cos(i) -cos(RAAN)*sin(w)-sin(RAAN)*cos(w)*cos(i) sin(RAAN)*sin(i);
           sin(RAAN)*cos(w)+cos(RAAN)*sin(w)*cos(i) -sin(RAAN)*sin(w)+cos(RAAN)*cos(w)*cos(i) -cos(RAAN)*sin(i);
           sin(w)*sin(i)                            cos(w)*sin(i)                             cos(i)];

%% Return conic section
r = ECI_PQW*[x;y;z];

end