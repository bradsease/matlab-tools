function vid2gif(filename)
%% Write Video File to GIF
%
% VID2GIF converts a video file to an animated GIF.
%
%
% Input:
%       filename  =  Video file name
%
% Output: 
%       None
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Process video file

% Read file
Video = VideoReader(filename);
Frames = readframe(Video);

% Set delay time from framerate
T = 1 / Video.FrameRate;

%% Create GIF

% Create GIF filename
[~, GIFName] = fileparts(filename);
GIFName = [GIFName '.gif'];

% Process frames
for i = 1:size(Frames, 4)
    
    % Convert to indexed image
    [im, cmap] = rgb2ind(Frames(:,:,:,i), 256);
    
    % Write GIF
    if i == 1;
        imwrite(im, cmap, GIFName, 'gif', 'Loopcount', inf, 'DelayTime', T);
    else
        imwrite(im, cmap, GIFName, 'gif', 'WriteMode', 'append', 'DelayTime', T);
    end
    
end

end