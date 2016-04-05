function [MAX, ROW, COL] = matmax(M)
%% Maximum Matrix Element
%
% MATMAX finds the maximum element in a matrix and returns the row and
% column indices corresponding to that element.
%
%
% Input:
%       M    =  Input matrix.
%
% Output: 
%       MAX  =  Maximum value
%       ROW  =  Row of the maximum value
%       COL  =  Column of the maximum value
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Find maximum element

% Row max
[MAX1, COL] = max(M);

% Column max
[MAX, ROW]  = max(MAX1);

% Row index
COL = COL(ROW);

end