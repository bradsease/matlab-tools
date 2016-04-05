function q = randquat
%% Random Quaternion
%
% RANDQUAT computes a uniformly distributed random quaternion.
%
%
% Input:
%       None
%
% Output: 
%       q  =  Random quaternion
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
% Based on: 
%   mathproofs.blogspot.com/2005/05/uniformly-distributed-random-unit.html
%
%

%% Generate Angles
t0 = 2 * pi * rand;
t1 = acos( 1 - 2 * rand );
t2 =  0.5 * ( pi * rand +  acos(rand) );

%% Construct Quaternion
q = [ sin(t0) * sin(t1) * sin(t2);
      cos(t0) * sin(t1) * sin(t2);
      cos(t1) * sin(t2);
      cos(t2)];
  
end