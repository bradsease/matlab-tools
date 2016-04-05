function rad = d2r(deg)
%% Degrees to Radians
%
% D2R converts all elements of an array to radians from degrees.
%
%
% Input: 
%       deg  =  MxN array of angles in degrees
%
% Output: 
%       rad  =  MxN array of angles in radians
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Conversion
rad = deg * pi/180;

end