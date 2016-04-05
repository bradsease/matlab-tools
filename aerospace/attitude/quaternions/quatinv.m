function qi = quatinv(q)
%% Quaternion Inversion
%
% QUATINV inverts a given quaternion.
%
%
% Input:
%       q  =  4x1 input quaternion
%
% Output: 
%       q  =  4x1 inverted quaternion
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Invert quaternion
qi = [-q(1:3); q(4)];

end