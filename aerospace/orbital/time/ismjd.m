function Bool = ismjd(D)
%% Modified Julian Date Check
%
% ISMJD checks if a particular date value is a modified julian date.
%
%
% Input:
%       D     =  Date
%
% Output: 
%       Bool  =  Boolean result 
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Check magnitude of date
if ( D < 2400000 )
    Bool = true;
else
    Bool = false;
end

end