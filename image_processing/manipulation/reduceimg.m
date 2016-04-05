function Image = reduceimg(Image)
%% Remove Zero or NaN Rows or Columns
%
% REDUCEIMG removes rows or columns that are all zero or NaN.
%
%
% Input: 
%       Image    =  Input image
%
% Output: 
%       Image    =  Cropped image
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Find Zero or NaN Rows or Columns
nanbool = isnan(Image);
zerbool = (Image == 0);
remove = zerbool | nanbool;

%% Remove Bad Rows & Columns
Image(:, all(remove, 1)) = [];
Image(all(remove, 2), :) = [];

end