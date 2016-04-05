function r = repeat(A)
%% Find Repeated Elements
%
% REPEAT returns a logical array indicating which elements in a sorted
% input vector are repeated.
%
%
% Input: 
%       A  =  Nx1 array
%
% Output: 
%       B  =  Nx1 indices of values occurring N times
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Find Repeated Elements
d = (diff(A) == 0);

%% Return Nx1 Result
r = [false; d] | [d; false];

end