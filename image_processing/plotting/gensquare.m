function Corners = gensquare(x, y, r)
%% Square Generation
%
% GENSQUARE generates a set of corners describing a square with given
% center location and side length.
%
% See also: PLOTSQUARE
%
% Input: 
%       xc            =  Center x-coordinate
%       yc            =  Center y-coordinate
%       r             =  Square side length
%       c             =  Plot marker attributes (optional)
%
% Output: 
%       Corners       =  5x2 corner coordinate pairs
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Define Square Corners
Corners = [x+r/2 y+r/2;
           x+r/2 y-r/2;
           x-r/2 y-r/2;
           x-r/2 y+r/2;
           x+r/2 y+r/2];

end