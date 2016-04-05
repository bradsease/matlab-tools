function BGFit = polyfitbg(Mask, Img, N)
%% Polynomial Background Fit
%
% POLYFITBACKGROUND fits a polynomial of order N to each column of the
% input image. A mask is supplied to remove foreground signal.
%
% See also: POLYFITBLIND, POLYSURFBG, STARLESSMEAN
%
%
% Input: 
%       Mask  =  M x N signal mask
%       Img   =  M x N source image
%       N     =  Order of polynomial fit
%
% Output: 
%       BGFit =  M x N background fit
%
%
% Author: Brad Sease (bsease@vt.edu)
% Last Modified: March 31, 2016
%
%

%% Initialization
[m, n]     = size(Img);
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
    
    % Build the surface fit
    BGFit(:, i) = Hrow * PCoeffs;

end

end