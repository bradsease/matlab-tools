function d = mdist(P, mu, S)
%% Mahalanobis Distance
%
% MDIST computes the mahalanobis distance of a set of points from a 
% distribution given by a mean and covariance.
%
%
% Input:
%       P   =  NxM set of coordinates
%       mu  =  Nx1 distribution mean
%       S   =  NxN distribution covariance
%
% Output: 
%       d   =  Mahalanobis distance
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Subtract points from mean
mu = mu * ones(1,size(P,2));
P = P - mu;

%% Compute distance
d = sqrt( dot( P'/S, P', 2) );

end