function C = meanshift(F, Loc, R)
%% Iterative Mean Shift
%
% MEANSHIFT performs an iterative sub-pixel localization procedure.
%
% Based on: Comaniciu, D., & Meer, P. (2002). Mean shift: a robust approach 
% toward feature space analysis. IEEE Transactions on Pattern Analysis and 
% Machine Intelligence, 24(5), 603–619. doi:10.1109/34.1000236
%
%
% Input: 
%       F      =  griddedInterpolant structure for target image. Generate 
%                 with F = griddedInterpolant(Img, 'method').
%       Loc    =  1x2 initial guess (integer)
%       R      =  Circular radius for center of mass
%
% Output: 
%       C      =  2x1 sub-pixel center point
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Initialization

% Build circular neighborhood
N = R/2;
[x, y] = meshgrid(-4*N:4*N, -4*N:4*N);
d = ( x.^2 + y.^2 ) <= N^2;

% Save starting location
origloc = Loc;

% Maximum # of iterations
maxiter = 50;

% Iteration error
err = inf;

% Iteration number
iter = 1;

%% Iterative Mean Shift
while ( err > 1e-3 && iter < maxiter )
    
    % Interpolate neighborhood
    xi = x(d) + Loc(1); 
    yi = y(d) + Loc(2); 
    B = abs(F(yi, xi));

    % Center of mass
    W = sum( B );
    X = sum( B.*xi ) / W;
    Y = sum( B.*yi ) / W;
    C = [X; Y];
    
    % Iteration error
    err  = norm( Loc - C' );
    
    % Cumulative error check -- break if estimate drifts beyond
    % one neighborhood diameter
    if ( norm(origloc - C') > R )
        C = origloc';
        break
    end
    
    % Initalize next iteration
    Loc = C';
    iter = iter + 1;
    
end

end