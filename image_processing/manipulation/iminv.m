function Image = iminv(Image)
%% Image Inverse
%
% IMINV inverts a given image.
%
%
% Input:
%       Image  =  Input image
%
% Output: 
%       Image  =  Inverted image
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Invert image
Image = max(max(Image)) - Image;

end