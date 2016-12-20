%Experiment 4 - Accuracy of Depth measurements as a function of light
%intensity. 
% The experiment was conducted on 14th December 2016;
% White LED and CFL bulbs were used to illuminate a yellow wall and depth
% measuremnts were counducted for three distances  for each value of light
% intensity of the wall. The light intensity values were measured at the
% wall
% Since LED and CFL lights were used no temperature variations were noted. 
lux361_50 = pcread('lux361_50.ply');
lux283_50 = pcread('lux283_50(1).ply');
lux188_50 = pcread('lux188_50.ply');
lux126_50 = pcread('lux126_50.ply');
lux53_50 = pcread('lux53_50.ply');
lux37_50 = pcread('lux37_50.ply');

figure, pcshow(lux361_50), title('Point Cloud image at Distance 50 cm and light intensity 361');
figure, pcshow(lux283_50), title('Point Cloud image at Distance 50 cm and light intensity 283');
figure, pcshow(lux188_50), title('Point Cloud image at Distance 50 cm and light intensity 188');
figure, pcshow(lux126_50), title('Point Cloud image at Distance 50 cm and light intensity 126');
figure, pcshow(lux53_50), title('Point Cloud image at Distance 50 cm and light intensity 53');
figure, pcshow(lux37_50), title('Point Cloud image at Distance 50 cm and light intensity 37');

cd1 = lux361_50.Location;
cd2 = lux283_50.Location;
cd3 = lux188_50.Location;
cd4 = lux126_50.Location;
cd5 = lux53_50.Location;
cd6 = lux37_50.Location;

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

figure, title('Depth (50cm) as measured at different light intensities');
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
