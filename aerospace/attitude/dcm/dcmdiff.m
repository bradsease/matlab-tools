function diff = dcmdiff(R1, R2)
%% Rotation Between DCMs
%
% DCMDIFF computes the rotation from one rotation matrix to another.
%
%
% Input:
%       R1    =  3x3 rotation matrix
%       R2    =  3x3 rotation matrix
%
% Output: 
%       diff  =  3x3 relative rotation matrix
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute rotation
diff = R1 * R2';

end