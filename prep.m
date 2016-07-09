close all, clear all, clc

% A = zeros(30);
% figure
% spy(A);
% for idx = 1:numel(A)
%     doneFlag = true
%     spy(A)
%     hold on
%     if A(idx) == 0
%         if rand() >= 0 && rand() <= 0.25
%             A(idx) = 1;
%         else
%             doneFlag = falsel;
%         end
%     end
%     hold off
%     if doneFlag == false
%         idx = 1;
%     end
% end

fs = 8000; % the sampling frequency
t25 = 0:1/fs:2.00;
t50 = 0:1/fs:0.50;
A = 2*880.00
B = 2*987.80
C = 2*261.63; % frequency of C5
D = 2*587.30
E = 2*329.63; % frequency of E5
F = 2*698.50
G = 2*392.00; % frequency of G5
 % the signal


M = [C E D F G A B C]

figure, hold on
axis off
axis([-1 9 -1 9])
grid off
j = 1
for i = 1:9
j = j - 0.1
fill([i i+1 i+1 i i],[0 0 1 1 0], [j 0 j])
y = [sin(M(i)*2*pi*t25) 0];
sound(y,fs)
pause(2)
end                


function play()
global flagstart flagstop
clc
figure('color', 'y')
bu = uicontrol('Units','Normalized', 'Poisition',[0.05,0.05, 0.9, 0.08],...
    'BackgroundColor','k', 'ForegroundColor', 'w', 'String', 'Go',...
    'Fontname', 'Tempus Sans Itc', 'FontSize', 20, 'Callback', @GoButton);

a = annotation('textbox',[0.2, 0.4, 0.6, 0.5], 'String', '0', ...
    'Fontname', 'Tempus Sans ITC', 'FontSize', 90);

set(a,'HorizonalAlignment', 'center', 'VerticalAlignment', 'middle')

i = 0;
flagstart = 0;
flagstop = 0;

while i < 100 && ~flagstop
    set(a, 'String', num2str(i))
    if flagstart
        i = i+1;
    end
    pause(0.01)
    drawnow
end

set(a,'String',num2str(i))
set(bu, 'Po', [0.05, 0.05, 0.9, 0.25], 'enable', 'off')

if i>89 && i<100
    set(bu, 'String', 'Well Done!', 'FontSize', 40)
    set(gcf, 'Color', 'g')
else
    set(bu, 'String', 'Booo!!!!!', 'FontSize', 40)
    set(gcf, 'Color', 'r')
end

pause(2)
set(gcf,'color','y')
set(bu,'String', 'Play again?', 'FontSize', 20, 'Po', [0.05, 0.05, 0.9, 0.08], ...
    'Callback', 'the_cube_time_game', 'enable', 'on')

end

function GoButton(o,e)
global flagstart flagstop
if strcmp(get(o, 'String'), 'Go')
    flagstart = 1;
    set(o, 'String', 'Stop!')
else
    flagstop = 1;
end
end