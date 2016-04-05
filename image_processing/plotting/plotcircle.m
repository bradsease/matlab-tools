function varargout = plotcircle(xc, yc, r, varargin)
%% Circle Plotting
%
% PLOTCIRCLE plots a circle with a prescribed center and radius.
%
% See also: GENCIRCLE
%
%
% Input: 
%       xc            =  Center x-coordinate
%       yc            =  Center y-coordinate
%       r             =  Circle radius
%       c             =  Plot marker attributes (optional)
%       Step          =  Angular step size (optional, default 0.1 rad)
%
% Output: 
%       h             =  Object handle (optional)
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Process Input
if ( nargin > 3 )
    c = varargin{1};
    if ( nargin > 4 )
        Theta = [0:varargin{2}:2*pi 0];
    else
        Theta = [0:0.1:2*pi 0];
    end
else
    c = '';
    Theta = [0:0.1:2*pi 0];
end

%% Generate (x,y) Coordinates
x = r*sin(Theta) + xc;
y = r*cos(Theta) + yc;

%% Plot Circle
if ( nargout > 0 )
    varargout{1} = plot(x, y, c);    
else
    plot(x, y, c);   
end

end
