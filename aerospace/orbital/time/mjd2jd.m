function JD = mjd2jd(MJD)
%% Modified Julian Date to Julian Date
%
% MJD2JD converts a modified julian date to a standard julian date.
%
% See also: JD2MJD
%
%
% Input:
%       MJD  =  Modified  Julian date
%
% Output: 
%       JD   =  Julian date
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%%
JD = MJD + 2400000.5;

end