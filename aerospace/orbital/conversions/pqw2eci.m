function ECI_PQW = pqw2eci(RAAN, w, i)
%% PQW to ECI Reference Frame
%
% PQW2ECI computes the rotation matrix to convert from the perifocal
% coordinate system to the Earth-centered intertial system.
%
% See also: ECI2PQW
%
%
% Input:
%       RAAN  =  Right ascension of the ascending node
%       w     =  Argument of perigee
%       i     =  Inclination
%
% Output: 
%       Output 1 = Description
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%%
ECI_PQW = [cos(RAAN)*cos(w)-sin(RAAN)*sin(w)*cos(i) -cos(RAAN)*sin(w)-sin(RAAN)*cos(w)*cos(i) sin(RAAN)*sin(i);
           sin(RAAN)*cos(w)+cos(RAAN)*sin(w)*cos(i) -sin(RAAN)*sin(w)+cos(RAAN)*cos(w)*cos(i) -cos(RAAN)*sin(i);
           sin(w)*sin(i)                            cos(w)*sin(i)                             cos(i)];
       
end