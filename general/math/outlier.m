function [IO, II] = outlier(v)
%% Outlier Detection
%
% OUTLIER computes the indices corresponding to outlying values in a data
% set. Uses the boxplot method. Computes two sets of outliers -- those
% corresponding to the inner fence and the outer fences. The inner fence
% typically returns more outliers.
%
%
% Input: 
%       v   =  N x 1 array of values
%
%
% Output: 
%       IO  =  Indices of outer outliers
%       II  =  Indices of inner outliers
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Compute quartiles

% Median
Q2 = median(v);

% Lower quartile
Q1 = median(v(v < Q2));

% Upper quartile
Q3 = median(v(v > Q2));

%% Compute fences

% Inter-quartile range
IQ = Q3 - Q1;

% Inner fence
IF = IQ * 1.5;

% Outer fence
OF = IQ * 3;

%% Find outlier indices

% Inner fence outliers
II = find( v < (Q1 - IF) | v > (Q3 + IF) );

% Outer fence outliers
IO = find( v < (Q1 - OF) | v > (Q3 + OF) );

end