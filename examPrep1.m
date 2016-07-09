close all 
clear all 
clc

figure,hold on
h = plot(0,0,'r.','markersize',100);
plot([0 1 1 0 0],[0 0 1 1 0],'k-')
axis([-0.3 1.3 -0.3 1.3])
axis square
grid on
steps = linspace(0,1,100);

for i = 1:100
set(h,'XData',steps(i),'YData',steps(i))
pause(0.01)
end