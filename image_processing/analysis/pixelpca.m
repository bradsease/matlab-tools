function C = pixelpca(mask)
%% Pixel Principal Component Analysis
%
% PIXELPCA computes the principal component analysis of a given image
% binary mask. The result is a covariance describing the extent of the
% masked shape.
%
%
% Input:
%       mask  =  Input mask
%
% Output: 
%       C     =  Covariance
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
C = ( B' * B ) / ( num - 1 );

end