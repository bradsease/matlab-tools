function [Image, Mask] = adaptt(Image, N, T)
%% Adaptive Thresholding
%
% ADAPTT performs adaptive thresholding on an input image with a
% user-defined neighborhood size and threshold level.
%
%
% Input:
%       Image  =  Input image
%       N      =  Neighborhood size (for averaging)
%       T      =  Threshold 
%
% Output: 
%       Image  =  Local mean subtracted and masked image
%       Mask   =  Image mask
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Adaptive Threshold

% Compute mean image
A_Mean = LMN(Image, N);

% Threshold difference image
Mask = (A_Mean - Image) > T;
Image = (A_Mean - Image).*Mask;

% Invert result
Image = max(max(Image)) - Image;
Mask = ~Mask;

end


function Image = LMN(Image, N)
%% Local Image Mean

% Build Mean Filter
K = ones(N)/N^2;

% Convolve Image
Image = conv2(Image, K, 'same'); 

end