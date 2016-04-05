function writegif(FileName, i, T)
%% Generate GIF From Figure
%
% WRITEGIF produces a GIF from the current frame. A new GIF file is created
% upon calling WRITEGIF initially, and each subsequent step appends the new
% frame to the .gif file.
%
%
% Input: 
%       FileName  =  String containing the desired filename
%       i         =  Current frame number (must start at 1)
%       T         =  Delay time between frames
%
%
% Output: 
%       None
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Convert current frame to image
M  = getframe;
im = frame2im(M);
[imind,cm] = rgb2ind(im,256);

%% Write GIF
if i == 1;
    imwrite(imind,cm, FileName, 'gif', 'Loopcount', inf, 'DelayTime', T);
else
    imwrite(imind, cm, FileName, 'gif', 'WriteMode', 'append', 'DelayTime', T);
end

end