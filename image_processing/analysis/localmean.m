function image = localmean(image, N)
%% Local Mean Filter
%
% LOCALMEAN computes the mean of an NxN neighborhood centered on each
% pixel in an image.
%
%
% Input:
%       image  =  Input image
%       N      =  Neighborhood width
%
% Output: 
%       image  =  Filtered image
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Build Mean Filter
if (numel(N) == 1)
    K = ones(N)/N^2;
elseif (numel(N) == 2)
    K = ones(N(1), N(2)) / (N(1)*N(2));
else
   error('Invalid kernel size!'); 
end

%% Convolve Image
image = conv2(image, K, 'same'); 

end