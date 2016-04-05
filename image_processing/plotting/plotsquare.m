function varargout = plotsquare(x, y, r, varargin)
%% Square Plotting
%
% PLOTSQUARE plots a square with a prescribed center and side length.
%
% See also: GENSQUARE
%
%
% Input: 
%       xc            =  Center x-coordinate
%       yc            =  Center y-coordinate
%       r             =  Square side length
%       c             =  Plot marker attributes (optional)
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
else
    c = '';
end

%% Define Square Corners
Corners = [x+r/2 y+r/2;
           x+r/2 y-r/2;
           x-r/2 y-r/2;
           x-r/2 y+r/2;
           x+r/2 y+r/2];

%% Plot Circle
if ( nargout > 0 )
    varargout{1} = plot(Corners(:,1), Corners(:,2), c);    
else
    plot(Corners(:,1), Corners(:,2), c);   
end

end