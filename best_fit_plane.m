function [s,p] = best_fit_plane(x,y,z)

% x,y,z are n x 1 column vectors of the three coordinates
% of a set of n points in three dimensions. s returns with
% the minimum mean square orthogonal distance to a least
% squares best-fit plane. The four coefficients of that
% plane's equation, Ax + By + Cz + D = 0, are returned in
% row vector p = [A,B,C,D]. A,B,C are normalized: A^2+B^2+C^2=1.
% RAS - June 9, 2001

[n,mx] = size(x); [ny,my] = size(y); [nz,mz] = size(z);
if (mx~=my)|(mx~=mz)|(ny~=n)|(nz~=n)
 error('The arguments must be column vectors of the same length.')
end
m = [mean(x),mean(y),mean(z)];
w = [x-m(1),y-m(2),z-m(3)]; % Use "mean" point as base
a = (1/n)*w'*w; % 'a' is a positive definite matrix
[u,d,v] = svd(a); % 'eig' & 'svd' get same eigenvalues for this matrix
s = d(3,3); % Select the smallest eigenvalue
p = u(:,3)'; % Get the corresponding (normalized) eigenvector (A,B,C)
p(4) = -p*m'; % Choose D so plane contains "mean" point

end