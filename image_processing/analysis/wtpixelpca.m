function C = wtpixelpca(mask, intensity)
%% Weighted Pixel Principal Component Analysis
%
% WTPIXELPCA computes the principal component analysis of a given image
% binary mask with brighter pixels given larger weights. The result is a 
% covariance describing the extent of the masked shape.
%
%
% Input:
%       mask       =  Input mask
%       intensity  =  Original image intensity data
%
% Output: 
%       C          =  Covariance
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Initialization

% Find mask pixel locations
[m, n] = size(mask);
Inds = find(mask);
[J, I] = ind2sub([m n], Inds);
num = numel(I);

% Calculate weightings
W = intensity(Inds);
W = W / sum(W);

%% Principal Component Analysis

% Compute means
X = [I J];
u = [sum(W.*I); sum(W.*J)];

% Set up solution
h = ones(num, 1);
B = repmat(sqrt(W),1,2).*(X - h * u');

% Return covariance
C = ( B' * B );

end