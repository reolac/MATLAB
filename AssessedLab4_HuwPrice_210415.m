% Assessed Lab 4
% Huw Price (eeu217)
% Qestion 1


function AssessedLab4_HuwPrice_210415()
close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.
global circle
circle = 1
figure, grid off, axis off, hold on;

col = ['y' 'm' 'c' 'r' 'g' 'b' 'w' 'k'];
rand = randsample(col,1);
x = [0 1 1 0 0];
y = [0 0 1 1 0];

 plot(0.5, 0.5, '.','color',rand,'MarkerSize',60);
 plot(x,y, '--', 'color',rand);


colour = uicontrol;
shape = uicontrol;
set(colour, 'String', 'Colour','Callback', @colChange, 'Position', [5 5 280 40])
set(shape, 'String', 'Shape','Callback',@shapeChange , 'Position', [285 5 270 40])
%Question 4
 last = []
 while ~waitforbuttonpress
     point = get(gca,'CurrentPoint');
     if isempty(last), last = point; end
     while point ~= last
         plot([last(1,1)/(point(1,1)/20)], [last(1,2) (point(1,2)/20)], '.','color',rand,'MarkerSize',60);
         
         last = point/20
     end
 end
end
% Question 2
function colChange(o,e)
    if strcmp(get(o, 'String'), 'Colour')
        col = ['y' 'm' 'c' 'r' 'g' 'b' 'w' 'k'];
        rand = randsample(col,1);
        x = [0 1 1 0 0];
        y = [0 0 1 1 0];

        plot(0.5, 0.5, '.','color',rand,'MarkerSize',60);
        plot(x,y, '--', 'color',rand);
    end
end
%Question 3
function shapeChange(circle,e)
    if circle == 1
        figure, grid off, axis off, hold on;
        col = ['y' 'm' 'c' 'r' 'g' 'b' 'w' 'k'];
        rand = randsample(col,1);
        x = [0 1 1 0 0];
        y = [0 0 1 1 0];

        plot(0.5, 0.5, '.','color',rand,'MarkerSize',60, 'MarkerFaceColor', rand );
        plot(x,y, '--', 'color',rand);
        circle = 0;
        
    elseif  circle == 0
        figure, grid off, axis off, hold on;
        col = ['y' 'm' 'c' 'r' 'g' 'b' 'w' 'k'];
        rand = randsample(col,1);
        x = [0 1 1 0 0];
        y = [0 0 1 1 0];

        plot(0.5, 0.5, 's','color',rand,'MarkerSize',60, 'MarkerFaceColor', rand );
        plot(x,y, '--', 'color',rand);
        circle = 1
    end
end
    