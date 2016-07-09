function play()
global flagstart flagstop
clc
figure('color', 'y')
bu = uicontrol('Units','Normalized', 'Position',[0.05,0.05, 0.9, 0.08],...
    'BackgroundColor','k', 'ForegroundColor', 'w', 'String', 'Go',...
    'Fontname', 'Tempus Sans Itc', 'FontSize', 20, 'Callback', @GoButton);

a = annotation('textbox',[0.2, 0.4, 0.6, 0.5], 'String', '0', ...
    'Fontname', 'Tempus Sans ITC', 'FontSize', 90);

set(a,'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle')

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
    'Callback', 'play', 'enable', 'on')

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