% w7e2a, version 14/11/13 

clear all
clc
close all

% start a new figure and allow for several functions to be superimposed 
figure 
hold on 

% first choose the domain and the step between t-values 
xmin = -3; 
step =  0.05; 
xmax =  2;
ymin = -4; 
ymax =  10; 
axis( [ xmin, xmax, ymin, ymax ] )
% turn the grid on, 
% grid on 
% label the two axes, 
xlabel('x')
% ylabel('f(x)')
% title for the plot  
title('y')
x = xmin:step:xmax; 
f = x.^4 + x.^3 + x.^2;
plot( x, f, 'b' ); 
t = -3.*x-2; 
plot( x, t, 'r' ); 
z = 0.*x; 
plot( x, z, 'k' ); 
y = ymin:step:ymax; 
w = 0.*y; 
plot( w, y, 'k' ); 

print -depsc w7e2a.eps
