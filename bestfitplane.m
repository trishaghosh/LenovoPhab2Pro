% The following file describes a function to find the best fitting plane
% equation from a set of x,y,z co-ordinate points from a point cloud data
% type. 
% It also finds the error of Normals of each point from this best fit
% plane. 

function normal = bestfitplane(x, y ,z)
    y_sq = y.*(y);
    xz = x.*z;
    xy = x.*y;
    yz = y.*z;
    x_sq = x.*x;
    xs_ys = (x_sq).*(y_sq);
    x_avg = mean(x);
    y_avg = mean(y);
    z_avg = mean(z);
    
    b1 = ((sum(y_sq)*sum(xz)) - (sum(xy)*sum(yz)))/(sum(x_sq)*sum(y_sq) - sum(xs_ys));
    
    b2 = ((sum(x_sq)*sum(yz)) - (sum(xy)*sum(xz)))/(sum(x_sq)*sum(y_sq) - sum(xs_ys));
    
    a = z_avg - b1*x_avg - b2*y_avg;
    
    z_dash = a + b1.*x + b2.*y;
    e = z - z_dash; 
    
    e_avg = mean(e);
    
    % z = a + b1*x +b2*y +e Multiple regession equation
    
    %ax = min(x):max(x);
    %ay = min(y):max(y);
    
    %[x1 y1] = meshgrid(ax ,ay);
    %az = b1.*(x1) + b2.*(y1) + a + e_avg;

    %surf(x1 ,y1,az);*/
    
    normal = [b1 ,b2 ,-1];
end






    