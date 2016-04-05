function MJD = jd2mjd(JD)
%% Julian Date to Modified Julian Date
%
% JD2MJD converts a standard julian date to a modified julian date.
%
% See also: MJD2JD
%
%
% Input:
%       JD   =  Julian date
%
% Output: 
%       MJD  =  Modified Julian date
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Convert date
MJD = JD - 2400000.5;

end