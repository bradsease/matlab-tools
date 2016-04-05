function PQW_ECI = eci2pqw(RAAN, w, i)
%% ECI to PQW Reference Frame
%
% ECI2PQW computes the rotation matrix to convert from the Earth-centered 
% intertial coordinate system to the perifocal system.
%
% See also: PQW2ECI
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
PQW_ECI = [cos(RAAN)*cos(w)-sin(RAAN)*sin(w)*cos(i) -cos(RAAN)*sin(w)-sin(RAAN)*cos(w)*cos(i) sin(RAAN)*sin(i);
           sin(RAAN)*cos(w)+cos(RAAN)*sin(w)*cos(i) -sin(RAAN)*sin(w)+cos(RAAN)*cos(w)*cos(i) -cos(RAAN)*sin(i);
           sin(w)*sin(i)                            cos(w)*sin(i)                             cos(i)]';
       
end