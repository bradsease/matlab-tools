function A = skew(v)
%% Skew-Symmetric Form of a Vector
%
% SKEW converts an input vector its skew-symmetric form.
%
% See also: SKEW2VEC
%
%
% Input:
%       v  =  3x1 or 1x3 vector
%
% Output: 
%       A  =  3x3 skew-symmetric form
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute skew-symmetric form
A = [ 0     -v(3)   v(2);
      v(3)   0     -v(1);
     -v(2)   v(1)   0  ];
 
end