function S = day2sec(D)
%% Days to Seconds
%
% DAY2SEC converts a given number of days to seconds.
%
% See also: SEC2DAY
%
%
% Input:
%       D  =  MxN array in days
%
% Output: 
%       S  =  MxN array in seconds
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute seconds
S = D * 86400;

end