function AR = aspectratio(mask)
%% Object Aspect Ratio
%
% ASPECTRATIO computes the principal component analysis of a given image
% binary mask. The ratio of the eigenvalues of the resulting covariance
% gives information on the aspect ratio of the masked object.
%
%
% Input:
%       mask  =  Input mask
%
% Output: 
%       AR    =  Aspect ratio
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Initial Setup

% Find masked pixels
[m, n] = size(mask);
Inds = find(mask);

% Compute indices
[J, I] = ind2sub([m n], Inds);
num = numel(I);

%% Principal Component Analysis

% Compute means
X = [I J];
u = [mean(I); mean(J)];

% Set up solution
h = ones(num, 1);
B = X - h * u';

% Return covariance
Cov = ( B' * B ) / ( num - 1 );

%% Compute aspect ratio
V = eig(Cov);
AR = abs(V(2) / V(1));

end