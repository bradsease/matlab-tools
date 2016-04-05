function [td, xd] = finitediff(t, x)
%% Finite Difference Derivative
%
% FINITEDIFF computes the finite difference derivative of a set of data
% points in the form (t,x). FINITEDIFF outputs a modified time vector that
% contains the midpoint of each time step and a derivative vector. The
% result has 1 less element than the input.
%
%
% Input:
%       t   =  Nx1 input time vector
%       x   =  Nx1 input position vector
%
% Output: 
%       td  =  (N-1)x1 time step midpoint vector
%       xd  =  (N-1)x1 derivative vector
%
%
% Author: Brad Sease
% Last Modified: April 1, 2016
%
%

%% Compute finite difference
xd = diff(x) ./ diff(t);

%% Compute time step midpoints
td = t(1:end-1) + diff(t)/2;

end