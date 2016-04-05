function [M, Overflow] = nbh(A, Ind, Size)
%% Pixel Neighborhood Extraction
%
% NBH returns the square neighborhood of a pixel with image-boundary
% checking. NBH will not fail even if the desired area extends beyond the
% image, but will indicate the overflow with a boolean flag.
%
%
% Input: 
%       A          =  Input array
%       Ind        =  Nx1 or 1xN pixel location (
%       Size       =  Neighborhood size
%
% Output: 
%       M          =  Neighborhood data
%       Overflow   =  Boolean overflow indicator (optional)
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Generate Neighborhood Bounds

% Neighborhood half size
SZ = floor(Size/2);

% Read image bounds
[m, n] = size(A);

% Define range
RangeRow = max(Ind(1)-SZ, 1):min(Ind(1)+SZ, m);
RangeCol = max(Ind(2)-SZ, 1):min(Ind(2)+SZ, n);

% Build neighborhood
M = A( RangeRow, RangeCol );

%% Overflow condition
if nargout > 1
    if ( ( numel(RangeRow) + numel(RangeCol) ) < Size*2 )
        Overflow = 1;
    else
        Overflow = 0;
    end
end

end