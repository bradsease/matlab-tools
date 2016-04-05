function v = skew2vec(A)
%% Skew-Symmetric to Vector Form
%
% SKEW2VEC converts a skew-symmetric matrix to the corresponding vector
% form.
%
% See also: SKEW
%
%
% Input:
%       A  =  3x3 skew-symmetric form
%
% Output: 
%       v  =  3x1 or 1x3 vector
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Check skew-symmetry
if ( sum(sum(A'+A)) ~= 0 )
   error('Input not skew-symmetric'); 
end

%% Compute vector form
v = [A(6); -A(3); A(2)];

end