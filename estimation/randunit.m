function u = randunit(varargin)
%% Random Unit Vector
%
% RANDUNIT computes a uniformly distributed random unit vector.
%
%
% Input:
%       r  =  Optional vector scaling parameter
%
% Output: 
%       u  =  Random unit vector
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
% Based on: 
%   mathproofs.blogspot.com/2005/05/uniformly-distributed-random-unit.html
%
%

%% Check Inputs
narginchk(0,1);
if nargin == 0
    r = 1; 
else
    r = varargin{1};
end

%% Generate Angles
t0 = 2 * pi * rand;
t1 = acos( 1 - 2*rand );

%% Construct Vector
u = [ r * sin(t0) * sin(t1);
      r * cos(t0) * sin(t1);
      r * cos(t1)];
  
end