function B = occur(A, N)
%% Find Reoccurring Elements
%
% OCCUR returns elements of an array which occur N times. For N = 1,
% returns unique elements.
%
%
% Input: 
%       A  =  Nx1 array
%
% Output: 
%       B  =  Mx1 array of values occurring N times
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Find Elements Repeated N Times
A = sort(A);
I = A(A(1:end-N+1) == A(N:end));

%% Return Unique Entries
if isempty(I)
   B = [];
   return
end
B = I([true; I(1:end-1) ~= I(2:end)]);

end