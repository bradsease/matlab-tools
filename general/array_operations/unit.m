function u = unit(u)
%% Vector Normalization
%
% UNIT computes the normalized unit vector corresponding to the input.
%
%
% Input: 
%       u  =  1xN or Nx1 vector
%
% Output: 
%       u  =  1xN or Nx1 unit vector
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Normalize vector
u = u / norm(u);

end