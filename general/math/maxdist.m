function [Dist, I1, I2] = maxdist(X)
%% Maximally-separated points
%
% MAXDIST find the maximally-separated pair of points in a 2xN array of
% points. Returns the maximum distance and indices correspnding to the
% point pair.
%
% Input: 
%       x     =  2xN array of points
%
% Output: 
%       Dist  =  Maximum distance between any two points
%       I1    =  Column index of maximally-separated point #1
%       I2    =  Column index of maximally-separated point #2
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Initialize variables
N         = size(X,2);
Dist(N,N) = 0;

%% Compute upper-triangular distance matrix
for i = 1:N
    xs1 = repmat(X(:,i),1,N-i);
    xs2 = X(:,i+1:end);
    Dist(i, i+1:end) = sqrt( sum((xs1-xs2).^2, 1) );
end

%% Find maximum element
[m1,I1] = max(Dist);
[~,I2]  = max(m1);
I1 = I1(I2);

end