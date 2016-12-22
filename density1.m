% Function to find the density of points measured by the device from a poin
% cloud
% function calculates density in x direction and y direction independently

function density1(x_values , y_values, x_range , y_range)

a = min(y_range);
b = min(x_range);
dy = 0.01;
dx = 0.01;

figure, title('Number of Points as a function of y within the given X Range');
xlabel('Distance in Y direction');
ylabel('Number of points in every 1cm of y values');
hold on;
grid on;
for j = a:dy:max(y_range)
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
for k = b:dx:max(x_range)
    m = find( x_values >= k & x_values <= k+dx );
    s = size(m);
    plot(k+dx, s(:,1), '+r');
end
hold off;
end
