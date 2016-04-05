function [MIN, ROW, COL] = matmin(M)
%% Maximum Matrix Element
%
% MATMAX finds the minimum element in a matrix and returns the row and
% column indices corresponding to that element.
%
%
% Input:
%       M    =  Input matrix.
%
% Output: 
%       MIN  =  Minimum value
%       ROW  =  Row of the maximum value
%       COL  =  Column of the maximum value
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Find minimum element

% Row max
[MIN1, COL] = min(M);

% Column max
[MIN, ROW]  = min(MIN1);

% Row index
COL = COL(ROW);

end