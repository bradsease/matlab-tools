function qp = quatmult(q, p)
%% Quaternion Multiplication
%
% QUATMULT multiplies to input quaternions.
%
% See also: QUATPOW
%
%
% Input:
%       q   =  4x1 input quaternion
%       p   =  4x1 input quaternion
%
% Output: 
%       qp  =  4x1 quaternion product
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Multiply quaternions
A = [ q(4)  q(3) -q(2)  q(1);
     -q(3)  q(4)  q(1)  q(2);
      q(2) -q(1)  q(4)  q(3);
     -q(1) -q(2) -q(3)  q(4)];
 
qp = A*p;
 
end