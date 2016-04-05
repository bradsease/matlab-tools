function BG = polysurfbg(Mask, Img, N)
%% Polynomial Surface Background Fit
%
% POLYSURFBG fits a 2D polynomial of order N to the input image. A 
% mask is supplied to remove foreground signal. Typically performs worse
% than polyfitbg.
%
% See also: POLYFITBG, POLYFITBLIND, STARLESSMEAN
%
%
% Input: 
%       Mask      =  M x N signal mask
%       Img       =  M x N source image
%       N         =  Order of polynomial fit
%
% Output: 
%       BG        =  M x N background fit
%
%
% Author: Brad Sease
% Last Modified: March 31, 2016
%
%

%% Find non-zero elements
[m, n] = size(Mask);
[x, y] = meshgrid(1:n, 1:m);

I = ~Mask;

xInds = x(I); 
yInds = y(I);

% Scale & center indices
sx = std(xInds); mx = mean(xInds);
sy = std(yInds); my = mean(yInds);

xInds = (xInds - mx) / sx;
yInds = (yInds - my) / sy;

%% Set up least-squares problem
P = [1:N; 1:N]; P = P(:);
NumE = numel(xInds);
A = [ones(NumE, 1) repmat([xInds yInds], 1, N).^repmat(P', NumE, 1)];
z = Img(I);

%% Solve for coefficients
C = (A'*A) \ (A'*z);

%% Evaluate surface fit
BG = C(1)*ones(m,n);
x = (x - mx) / sx; y = (y - my) / sy;
for i = 1:N
    BG = BG + C(2*i) * x.^i + C(2*i+1) * y.^i;
end

end