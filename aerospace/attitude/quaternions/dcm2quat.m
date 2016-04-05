function q = dcm2quat(A)
%% DCM to Quaternion
%
% DCM2QUAT computes a quaternion from a given direction cosine matrix.
%
% See also: QUAT2DCM
%
%
% Input:
%       A  =  3x3 direction cosine matrix
%
% Output: 
%       q  =  4x1 quaternion vector
%
%
% Author: Brad Sease
% Last Modified: April 5, 2016
%
%

%% Compute q
trA = trace(A);
[~, I] = max([diag(A); trA]);

% Compute q with minimum numerical error
switch I
    case 1
        q = [1+2*A(1,1)-trA;
             A(1,2)+A(2,1);
             A(1,3)+A(3,1);
             A(2,3)-A(3,2)];
    case 2
        q = [A(2,1)+A(1,2);
             1+2*A(2,2)-trA;
             A(2,3)+A(3,2);
             A(3,1)-A(1,3)];
    case 3
        q = [A(3,1)+A(1,3);
             A(3,2)+A(2,3);
             1+2*A(3,3)-trA;
             A(1,2)-A(2,1)];
    case 4
        q = [A(2,3)-A(3,2);
             A(3,1)-A(1,3);
             A(1,2)-A(2,1);
             1+trA];
end

%% Enforce Normalization
q = q / norm(q);

end