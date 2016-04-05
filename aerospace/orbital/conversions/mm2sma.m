function a = mm2sma(n)
%% Mean Motion to Semimajor Axis
%
% MM2SMA computes the semimajor axis of an orbit from a given mean motion.
%
%
% Input:
%       n  =  Mean motion
%
% Output: 
%       a  =  Semimajor axis
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute semimajor axis
a = (398600/n^2)^(1/3);

end