function f = reclabel(x, y, image, label, f)
%% Recursive Region Growing
%
% RECLABEL recursively maps a contiguous region in an image mask.
%
%
% Input:
%       x      =  Current image x coordinate
%       y      =  Current image y coordinate
%       image  =  Binary image mask
%       label  =  Scalar label value
%       f      =  Current labeled image
%
% Output: 
%       f      =  Labeled image
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Label current pixel
f(x,y) = label;

%% Check neighboring pixelss
if ( image(x-1, y) == 1 && f(x-1, y) ~= label)
     f = reclabel(x-1, y, image, label, f );
end

if ( image(x+1, y) == 1 && f(x+1, y) ~= label)
     f = reclabel(x+1, y, image, label, f );
end

if ( image(x, y-1) == 1 && f(x, y-1) ~= label)
     f = reclabel(x, y-1, image, label, f );
end

if ( image(x, y+1) == 1 && f(x, y+1) ~= label)
     f = reclabel(x, y+1, image, label, f );
end

end