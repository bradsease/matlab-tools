function D = sec2day(S)
%% Seconds to Days
%
% SEC2DAY converts a given number of seconds to days.
%
% See also: DAY2SEC
%
%
% Input:
%       S  =  MxN array in seconds
%
% Output: 
%       D  =  MxN array in days
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Convert to days
D = S / 86400;

end