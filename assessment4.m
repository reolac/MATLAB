figure,hold on;
grid off;
axis off;
circleflag = true;

plot(0.5,0.5,'.r','MarkerSize',100);
plot([0 1 1 0 0],[0 0 1 1 0],'Color' , [0.62 0.23 0.23] ,...
    'LineStyle' , '--', 'markersize',2); % Creates the grid and circle

axis([-0.3 1.3 -0.3 1.3]);

color = uicontrol; % Creates the buttons
shape = uicontrol;

% Assigns a title, position and a callback to each button
set(color, 'String','Color', 'Position', [10, 10, 250, 30],...
'Callback', 'plot([0 1 1 0 0],[0 0 1 1 0],''Color'' , rand(1,3) , ''LineStyle'' , ''--'', ''MarkerSize'',2)')
set(shape, 'String','Shape', 'Position', [300, 10, 250, 30],...
'Callback', 'fill([0.4 0.6 0.6 0.4 0.4], [0.4 0.4 0.6 0.6 0.4], rand(1,3))')

fs = 8000; % the sampling frequency
t25 = 0:1/fs:0.3; % time of sound

while ~waitforbuttonpress % when the button is pressed
    axis([-0.3 1.3 -0.3 1.3]);
    point = get(gca,'CurrentPoint'); 
    stepSize = (point-0)/(20); 
    j = 0
    for i = 0:stepSize:point % loop towards point
        fill([i i+0.1 i+0.1 i i],[i i i+0.1 i+0.1 i], [1 0 1])
        % fill in a new shape at every point
        C = 2*261.63 + j % increment the sound
        j = j + 13
        y = [sin(C*100*2*pi*t25) 0];  
        sound(y,fs)% play a sound at every point
        pause(1)
    end
 end