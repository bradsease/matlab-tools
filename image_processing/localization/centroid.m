function [ROW, COL, Area, Energy, BB] = centroid(Image, T)
%% Binary Mask Centroiding
%
% CENTROID computes intensity-weighted center of mass coordinates for each
% contiguous region in an image. 
%
%
% Input:
%       Image  =  Input image
%       T      =  Desired detection threshold
%
% Output: 
%       ROW     =  1xN list of row coordinates
%       COL     =  1xN list of column coordinates
%       Area    =  1xN list of pixel counts for each region
%       Energy  =  1xN list of summed intensities for each region
%       BB      =  Nx4 list of bounding box coordinates 
%                  (Format: [Min x, Max x, Min y, Max y])
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Segment Binary Mask
[m, n] = size(Image);
[Mask, NOBS] = bwlabel(Image>T, 8);
if ~NOBS
   ROW = []; COL = []; BB = [];
   return
end
I = find(Mask);
[II, JJ] = ind2sub([m n], I);

%% Vector Initialization
Regions = Mask(I);
Intensity = Image(I);

%% Centroid Regions
ROW(NOBS) = 0; COL(NOBS) = 0; BB(NOBS,4) = 0;
for i = 1:NOBS

    % Extract current region
    Current = find( Regions == i );
    IC = II(Current); JC = JJ(Current);
    
    % Mark border signals for removal
    mII = min(IC); MII = max(IC);
    mJJ = min(JC); MJJ = max(JC);
    if ( mII == 1 || mJJ == 1 || MII == m || MJJ == n )
        ROW(i) = nan;
        continue
    end

    % Compute region statistics
    CurrentInt = Intensity(Current);
    Energy = sum(CurrentInt);
    Area = numel(Current);
    BB(i,:) = [mII MII mJJ MJJ];
    
    % Compute current centroid
    X = sum([IC.*CurrentInt JC.*CurrentInt],1) / Energy;
    ROW(i) = X(1);
    COL(i) = X(2);

end

%% Remove Border Signalss
Drop = isnan(ROW);
ROW(Drop)  = [];
COL(Drop)  = [];
BB(Drop,:) = [];

end