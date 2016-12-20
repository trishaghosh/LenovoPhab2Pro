%Experiment 3 - Accuracy of Depth measurement as a function of distance
%artificial light in day time. So there was ambient sunlight present as
%well as white light from LEd and CFL sources
% The experiment was conducted on the 14th of December 2016
% The experiment was conducted for ambient light conditions varying from
% 50-130LUX
% The light shown on the wall was a white light of intensity 209 LUX
%At the end of the expt the light intensit was 190 LUX
% A point cloud image for a yellow coloured wall was captured and the depth
% determined from the z coordinates. 
% The depths determined was compared to actual depth values measured using
% a scale. 
d1 = pcread('luxdist_50.ply');
d2 = pcread('luxdist_100.ply');
d3 = pcread('luxdist_150.ply');
d4 = pcread('luxdist_200.ply');
d5 = pcread('luxdist_250.ply');
d6 = pcread('luxdist_300.ply');
d7 = pcread('luxdist_350.ply');
d8 = pcread('luxdist_380.ply');

figure , pcshow(d1) , title('Point Cloud Image of Wall @ 50cm');
figure , pcshow(d2) , title('Point Cloud Image of Wall @ 100cm');
figure , pcshow(d3) , title('Point Cloud Image of Wall @ 150cm');
figure , pcshow(d4) , title('Point Cloud Image of Wall @ 200cm');
figure , pcshow(d5) , title('Point Cloud Image of Wall @ 250cm');
figure , pcshow(d6) , title('Point Cloud Image of Wall @ 300cm');
figure , pcshow(d7) , title('Point Cloud Image of Wall @ 350cm');
figure , pcshow(d8) , title('Point Cloud Image of Wall @ 380cm');

cd1 = d1.Location;
cd2 = d2.Location;
cd3 = d3.Location;
cd4 = d4.Location;
cd5 = d5.Location;
cd6 = d6.Location;
cd7 = d7.Location;
cd8 = d8.Location;


z1 = cd1(:,3);
z2 = cd2(:,3);
z3 = cd3(:,3);
z4 = cd4(:,3);
z5 = cd5(:,3);
z6 = cd6(:,3);
z7 = cd7(:,3);
z8 = cd8(:,3);

z1_avg = mean(z1);
z2_avg = mean(z2);
z3_avg = mean(z3);
z4_avg = mean(z4);
z5_avg = mean(z5);
z6_avg = mean(z6);
z7_avg = mean(z7);
z8_avg = mean(z8);

z1_var = var(z1);
z2_var = var(z2);
z3_var = var(z3);
z4_var = var(z4);
z5_var = var(z5);
z6_var = var(z6);
z7_var = var(z7);
z8_var = var(z8);

figure, title('Depth as measured from different distances');
plot(z1, 'r');
hold on;
plot(z2, 'g');
plot(z3, 'b');
plot(z4, 'm');
plot(z5, 'c');
plot(z6, 'y');
plot(z7, 'k');
plot(z8, 'k');
hold off;

disp(z1_avg);
disp(z2_avg);
disp(z3_avg);
disp(z4_avg);
disp(z5_avg);
disp(z6_avg);
disp(z7_avg);
disp(z8_avg);

disp(z1_var);
disp(z2_var);
disp(z3_var);
disp(z4_var);
disp(z5_var);
disp(z6_var);
disp(z7_var);
disp(z8_var);
