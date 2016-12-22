% Routine to find the density of points and the comparision of variance of
% different point clouds. 
% Norrmalising angle in x direction = (theta_x)/2 = 10.5207 degrees
% Normalising angle in y direction = (theta_y)/2 = 4.4112 degrees

function [p1, p2] = d2_calc(pt_cloud , dist)

figure, pcshow(pt_cloud) , title('Point cloud'), xlabel('X'), ylabel('Y') ,zlabel('Z');

xyz = pt_cloud.Location;
x = xyz(:,1);
y = xyz(:,2);
z = xyz(:,3);

count = pt_cloud.Count;

x_limit = pt_cloud.XLimits;
y_limit = pt_cloud.YLimits;
z_limit = pt_cloud.ZLimits;

disp('X Limits of Point cloud');
disp(x_limit);
disp('Y Limits of Point cloud');
disp(y_limit);
disp('z Limits of Point Cloud');
disp(z_limit);

[s1 ,p1] = best_fit_plane(x,y,z); %Best fit plane of the entire area captured
%find variance of this data

x_range = [(-1)*tand(10.5207)*dist , tand(10.5207)*dist];
y_range = [(-1)*tand(4.4112)*dist , tand(4.4112)*dist];

disp('Normalised Range of X');
disp(x_range);
disp('Normalised Range of Y');
disp(y_range);

a = find( x >= (-1)*tand(10.5207)*dist & x <= tand(10.5207)*dist); % between min and max of x range
b = find( y >= (-1)*tand(4.4112)*dist & y <= tand(4.4112)*dist); % between min and max of y range

%i = find(a == b);
%index = b(i);

[index ,k,l] = intersect(a,b);

disp('Number of points in the normalised area');
disp(size(index));

x_nrm = x(index);
y_nrm = y(index);
z_nrm = z(index);

[s2 ,p2] = best_fit_plane(x_nrm , y_nrm ,z_nrm); %best fit plane of normalised area 
%Find variance from this data

density1(x_nrm ,y_nrm, x_range, y_range);
density(pt_cloud,x_range, y_range); % Density of points along the entier range of x and y values

end




