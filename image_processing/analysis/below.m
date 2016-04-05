function [image, mask] = below(image, T)
%% Return Pixels Below Threshold
%
% BELOW returns only the pixels in an image which are above a user-defined
% threshold level. In addition, BELOW returns a binary mask indicating the
% pixels above that threshold.
%
%
% Input:
%       image  =  Input image
%       T      =  User-defined threshold value
%
% Output: 
%       image  =  Output image
%       mask   =  Output mask
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Return Image < Threshold

% Generate mask
mask = image < T;

% Mask image
image = image .* mask;

end