%Experiment 4 - Accuracy of Depth measurements as a function of light
%intensity. 
% The experiment was conducted on 14th December 2016;
% White LED and CFL bulbs were used to illuminate a yellow wall and depth
% measuremnts were counducted for three distances  for each value of light
% intensity of the wall. The light intensity values were measured at the
% wall
% Since LED and CFL lights were used no temperature variations were noted. 
lux361_300 = pcread('lux361_300(1).ply');
lux283_300 = pcread('lux283_300.ply');
lux188_300 = pcread('lux188_300.ply');
lux126_300 = pcread('lux126_300.ply');
lux53_300 = pcread('lux53_300.ply');
lux37_300 = pcread('lux37_300(1).ply');

figure, pcshow(lux361_300), title('Point Cloud image at Distance 300 cm and light intensity 361'), colormap 'gray';
figure, pcshow(lux283_300), title('Point Cloud image at Distance 300 cm and light intensity 283');
figure, pcshow(lux188_300), title('Point Cloud image at Distance 300 cm and light intensity 188');
figure, pcshow(lux126_300), title('Point Cloud image at Distance 300 cm and light intensity 126');
figure, pcshow(lux53_300), title('Point Cloud image at Distance 300 cm and light intensity 53');
figure, pcshow(lux37_300), title('Point Cloud image at Distance 300 cm and light intensity 37') , colormap 'gray';

cd1 = lux361_300.Location;
cd2 = lux283_300.Location;
cd3 = lux188_300.Location;
cd4 = lux126_300.Location;
cd5 = lux53_300.Location;
cd6 = lux37_300.Location;

z1 = cd1(:,3);
z2 = cd2(:,3);
z3 = cd3(:,3);
z4 = cd4(:,3);
z5 = cd5(:,3);
z6 = cd6(:,3);

z1_avg = mean(z1);
z2_avg = mean(z2);
z3_avg = mean(z3);
z4_avg = mean(z4);
z5_avg = mean(z5);
z6_avg = mean(z6);

figure, title('Depth (300cm) as measured at different light intensities');
plot(z1, 'r');
hold on;
plot(z2, 'g');
plot(z3, 'b');
plot(z4, 'm');
plot(z5, 'c');
plot(z6, 'y');
hold off;

disp(z1_avg);
disp(z2_avg);
disp(z3_avg);
disp(z4_avg);
disp(z5_avg);
disp(z6_avg);