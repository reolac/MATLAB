clear all 
clc
close all
 
T= 10000;
x = rand(T,1)*2+4; y = rand(T,1)+2;
index = (sqrt((x-5).^2 + (y-2).^2) < 1) ...
    & (sqrt((x-4).^2 + (y-4).^2) < 2);

plot (x(index), y(index), 'r.')
hold on
plot (x(~index), y(~index), 'g.')
axis equal

fprintf('intersection area = %.4f\n',...
    mean(index));


