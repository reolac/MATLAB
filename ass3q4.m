% ass3q4, version 04/12/13 

clear all
clc
close all


figure 
hold on 


xmin = -3; 
step =  0.05; 
xmax =  7;
ymin = -1; 
ymax =  20; 
axis( [ xmin, xmax, ymin, ymax ] )
 
grid on 

xlabel('x')
ylabel('f(x)')

title('y')
x = xmin:step:xmax; 
f = x.^4 + 2*x.^3 + 1*x.^2-7*x+7;
plot( x, f, 'b' ); 
t = -7.*x+7; 
plot( x, t, 'r' ); 


print -depsc ass3q4.eps
