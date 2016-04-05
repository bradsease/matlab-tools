function CMask = bincirc(r, varargin)
%% Binary Circle Generation
%
% BINCIRC generates a binary circle mask with a desired radius, location,
% and overall image resolution.
%
%
% Input: 
%       r             =  Circle radius
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
if (nargin > 1)
    resx = varargin{1}(1);
    resy = varargin{1}(2);
    if (nargin == 3)
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

% Find pixels within radius
CMask = ( (RI - locx).^2 + (CI - locy).^2) <= r^2;

end