function Peaks = nonmax(M) 
%% Non-Maximal Suppression
%
% NONMAX returns a list of indices of pixels that are greater than all of
% their neighbors.
%
%
% Input: 
%       M       =  Input image
%
% Output: 
%       Peaks   =  Nx1 list of peaks
%
%
% Authors: Brad Sease & Kevin Schmittle
% Last Modified: April 5, 2016
%
%

%% Compare Neighboring Pixels
M = ( M > circshift(M, [1 0])   )   &...
    ( M > circshift(M, [-1 0])  )   &...
    ( M > circshift(M, [0 1])   )   &...
    ( M > circshift(M, [0 -1])  )   &...
    ( M > circshift(M, [1 1])   )   &...
    ( M > circshift(M, [-1 1])  )   &...
    ( M > circshift(M, [-1 -1]) )   &...
    ( M > circshift(M, [1 -1])  );

%% Output Peak Indices
Peaks = find(M);

end