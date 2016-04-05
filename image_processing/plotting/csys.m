function csys(scale)
%% Coordinate System Plotting
%
% CSYS plots a coordinate system on the current figure.
%
%
% Input:
%       scale  =  Length of each axis arrow
%
% Output: 
%       None
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Plot coordinate system
quiver3(0,0,0,1,0,0,scale, 'g')
hold on
quiver3(0,0,0,0,1,0,scale, 'r')
quiver3(0,0,0,0,0,1,scale, 'b')

end