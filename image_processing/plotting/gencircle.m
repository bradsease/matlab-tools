function [x,y] = gencircle(xc, yc, r, varargin)
%% Circle Generation
%
% GENCIRCLE generates a set of (x,y) points on a circle with a prescribed
% center and radius.
%
% See also: PLOTCIRCLE
%
%
% Input: 
%       xc            =  Center x-coordinate
%       yc            =  Center y-coordinate
%       r             =  Circle radius
%       Step          =  Angular step size (optional, default 0.1 rad)
%
% Output: 
%       x             =  Circle x-coordinates
%       y             =  Circle y-coordinates
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Define Theta
if ( nargin > 3 )
    Theta = [0:varargin{1}:2*pi 0];
else
    Theta = [0:0.1:2*pi 0];
end

%% Generate (x,y) Coordinates
x = r*sin(Theta) + xc;
y = r*cos(Theta) + yc;

end
