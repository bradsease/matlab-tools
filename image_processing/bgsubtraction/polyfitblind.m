function BG = polyfitblind(Img, N)
%% Blind Polynomial Background Fit
%
% POLYFITBLIND fits a polynomial of order N to each column of the input 
% image. A second fit is performed after removing pixels which were 1%
% greater than the result of the first fit.
%
% See also: POLYFITBG, POLYSURFBG, STARLESSMEAN
%
%
% Input: 
%       Img    =  MxN source image
%       N      =  Order of polynomial fit
%
% Output: 
%       BGFit  =  MxN background fit
%
%
% Author: Brad Sease (bsease@vt.edu)
% Last Modified: March 31, 2016
%
%

%% Fit entire image

% Assume no signal
Mask = zeros(size(Img));

% First background fit
BG = PFIT(Mask, Img, N);

%% Remove candidate signal pixels, fit again

% Signal = 1% over background
Mask = Img > 1.01*BG;

% Fit again
BG = PFIT(Mask, Img, N);

end


function BGFit = PFIT(Mask, Img, N)
%% Polynomial background fit
%
%

%% Init
[m, n] = size(Img);
BGFit(m,n) = 0;

% Invert foreground mask
Mask = ~Mask;


%% Compute background fit
k = (1:m)';
k = (k - mean(k)) / std(k);
Hrow = [ones(m, 1) repmat(k, 1, N).^repmat(1:N, m, 1)];
for i = 1:n
    
    % Select current column of mask
    RowMask = Mask(:, i);
    
    % Store indices
    A = Hrow(RowMask, :);
    
    % Compute least-squares polynomial solution
    PCoeffs = (A'*A) \ (A'*Img(RowMask, i));
    
%     e = mean(A * PCoeffs - Img(RowMask, i));
    
    % Build the surface fit
    BGFit(:, i) = Hrow * PCoeffs;

end


end