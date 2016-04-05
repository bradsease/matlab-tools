function Out = binring(ro, ri, varargin)
%% Binary Ring Generation
%
% BINRING generates a binary circle mask with a desired radius, location,
% and overall image resolution.
%
%
% Input: 
%       ro            =  Circle outer radius
%       ri            =  Circle inner radius
%       Resolution    =  Image resolution (optional)
%       Location      =  Circle location (optional)
%
% Output: 
%       CMask         =  Circular image mask
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Check Input
if (nargin > 2)
    resx = varargin{1}(1);
    resy = varargin{1}(2);
    if (nargin == 4)
        locx = varargin{2}(1); 
        locy = varargin{2}(2);
    else
        locx = resx/2; locy = resy/2;
    end
else
    resx = r; resy = r;
    locx = resx/2; locy = resy/2;
end

%% Generate Mask

% Grid out image plane
[CI, RI] = meshgrid( 1:resx, 1:resy );

% Shift origin to location
RI = RI - locx;
CI = CI - locy;

% Find pixels within bounds
Out = (( RI.^2 + CI.^2) <= ro^2 ) & (( RI.^2 + CI.^2) >= ri^2);


end