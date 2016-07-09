% Lab 4
% Huw Price (eeu217)
% Qestion 1

close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.

z = imread('coins.png'); 
z(z < 100) = 255;
figure, imshow(z);

%Question 2
x = rand(10000,1)*10; 
y = rand(10000,1)*10;
ind1 = (x > 3 & x < 8) & (y > 1 & y < 4);
ind2 = (x-3).^2+(y-8).^2-2^2 < 0;
ind3 = (8*x-3*y-13 > 0) & ...
       (-8*x-3*y+67 > 0) & ...
       (y > 1) & ...
       (x-5).^2+(y-4).^2-1 > 0;
 
figure('color','w'), hold on, grid on, axis square
plot(x(ind1),y(ind1),'k.','markers',10);
plot(x(~ind1),y(~ind1),'g.','markers',10);

figure('color','w'), hold on, grid on, axis square
plot(x(ind2),y(ind2),'k.','markers',10);
plot(x(~ind2),y(~ind2),'g.','markers',10);

figure('color','w'), hold on, grid on, axis square
plot(x(ind3),y(ind3),'k.','markers',10);
plot(x(~ind3),y(~ind3),'g.','markers',10);

%Question 3
%a
figure
plot ([0;15;30],[0;3;0], 'b.-')
grid on

%c
figure

plot ((1:20),1-mod(1:20,2), 'b.-')
grid on

%e
%figure

%plot ((),1-mod(1:20,2), 'b.-')
%grid on
