function IO = tform(I, M)
%% Affine Image Transform
%
% TFORM transforms an image according to a 2x3 or 3x3 transformation
% matrix.
%
%
% Input: 
%       I         =  Input image
%       M         =  2x2 or 3x4 transformation matrix
%
% Output: 
%       IO        =  Transformed image
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Check input format
[m, n] = size(M);
if ( m == n && m == 2 )
    T = [0;0];
elseif ( m == n && m == 3 )
    T = M(1:2, 3);
    M = M(1:2, 1:2);
else
    error('Incorrectly sized deformation matrix')
end

%% Set up grid
[m, n] = size(I);
[x, y] = meshgrid(1:n, 1:m);

%% Find interpolation points
X = [x(:)'-n/2; y(:)'-m/2];
X = M \ X;

xn = reshape(X(1,:), m, n) - T(1) + n/2;
yn = reshape(X(2,:), m, n) - T(2) + m/2;

%% Interpolate
IO = interp2(x, y, I, xn, yn, 'linear');
IO(isnan(IO)) = 0;

end