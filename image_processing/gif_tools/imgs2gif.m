function imgs2gif(images, outfile, T)
%% Write Image Stack to GIF
%
% IMGS2GIF writes an MxNxL stack of image to an animated GIF file.
%
%
% Input:
%       image    =  MxNxL image stack
%       outfile  =  Output GIF file
%       T        =  Delay in seconds between images
%
% Output: 
%       None
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Determine format: RGB or grayscale
N = size(images);

switch numel(N)
    case 3
        % Grayscale images
        NumFrames = N(3);
        FMT = 3;
    case 4
        % RGB images
        NumFrames = N(4);
        FMT = 4;
    otherwise
        error('Unsupported format; must be either an RGB or grayscale image stack.')
end

%% Create GIF

% Process frames
for i = 1:NumFrames
    
    % Convert to indexed image
    if ( FMT == 3 )
        [im, cmap] = gray2ind(images(:,:,i), 256);
    elseif ( FMT == 4 )
        [im, cmap] = rgb2ind(images(:,:,:,i), 256);
    end
    
    % Write GIF
    if i == 1;
        imwrite(im, cmap, outfile, 'gif', 'Loopcount', inf, 'DelayTime', T);
    else
        imwrite(im, cmap, outfile, 'gif', 'WriteMode', 'append', 'DelayTime', T);
    end
    
end

end