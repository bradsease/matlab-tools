function deg = r2d(rad)
%% Radians to Degrees
%
% R2D converts all elements of an array to degrees from radians.
%
%
% Input: 
%       deg  =  MxN array of angles in radians
%
% Output: 
%       rad  =  MxN array of angles in degrees
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Conversion
deg = rad * 180/pi;

end