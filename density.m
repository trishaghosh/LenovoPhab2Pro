% Function to find the density of points measured by the device from a poin
% cloud
% function calculates density in x direction and y direction independently

function density(pt_cloud)

figure, pcshow(pt_cloud) , title('Point cloud'), xlabel('X'), ylabel('Y') ,zlabel('Z');

x_limit = pt_cloud.XLimits;
y_limit = pt_cloud.YLimits;

disp('X Limits of the point cloud image');
disp(x_limit);
disp('Y Limits of the point cloud imagee');
disp(y_limit);

xyz = pt_cloud.Location;

x= xyz(:,1);
y= xyz(:,2);

x_range = [(x_limit(1,1) + x_limit(1,2))/2 + 0.10 ,  (x_limit(1,1) + x_limit(1,2))/2 - 0.10];
y_range = [(y_limit(1,1) + y_limit(1,2))/2 + 0.10 ,  (y_limit(1,1) + y_limit(1,2))/2 - 0.10];

disp('Range of x values chosen');
disp(x_range);
disp('Range of y values chosen');
disp(y_range);

c = pt_cloud.Count;
a = min(y_limit);
b = min(x_limit);
dy = 0.01;
dx = 0.01;

store_x = find( x >= min(x_range) & x<=max(x_range));
store_y = find( y >= min(y_range) & y<=max(y_range));

y_values = y(store_x);
x_values = x(store_y);

figure, title('Number of Points as a function of y within the given X Range');
xlabel('Distance in Y direction');
ylabel('Number of points in every 1cm of y values');
hold on;
grid on;
for j = a:dy:max(y_limit)
    m = find( y_values >= j & y_values <= j+dy );
    s = size(m);
    plot(j+dy, s(:,1), '*b');
end
hold off;

figure, title('Number of Points as a function of x within the Y Range');
xlabel('Distance in x direction');
ylabel('Number of points in every 1cm of x values');
hold on;
grid on;
for k = b:dx:max(x_limit)
    m = find( x_values >= k & x_values <= k+dx );
    s = size(m);
    plot(k+dx, s(:,1), '+r');
end
hold off;

end

   
