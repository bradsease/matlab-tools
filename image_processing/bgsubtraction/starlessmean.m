function [Mask, Background, Mean, Sigma] = starlessmean(Image)
%% Iterative Background Segmentation
%
% STARLESSMEAN iteratively builds a mask to remove signal from an
% unresolved space image.
%
% Based on: Levesque, M. P., Evaluation of the iterative method for 
% image background removal in astronomical images, 2008.
%
% See also: POLYFITBG, POLYFITBLIND, POLYSURFBG
%
%
% Input: 
%       Image       =  MxN input image
%
% Output: 
%       Mask        =  MxN mask of background pixels
%       Background  =  MxN output image of background pixels
%       Mean        =  Image noise mean
%       Sigma       =  Image noise standard deviation
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Iteration Parameters
MaxIter  = 100;
Tol      = 0.1;
SigLimit = 2;

%% Iterate Until Converged
MeanLast = inf;
for i = 1:MaxIter

    % Compute image mean and standard deviation
    CData = Image(~isnan(Image));
    Mean = mean(CData);
    Sigma = std(CData);
    
    % Remove outlying pixels
    Image((Image > Mean + SigLimit*Sigma) | (Image < Mean - SigLimit*Sigma)) = nan;
    
    % Check for convergence
    if (abs(MeanLast - Mean) < Tol)
        Mask = isfinite(Image);
        Background = Image .* Mask;
        return
    end
    
    % Initialize next iteration
    MeanLast = Mean;
    
end

end