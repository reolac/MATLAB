% Assessed Lab 2
% Huw Price (eeu217)
% Qestion 1

close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.

figure

hold on
axis equal off
it = 0;

ax = [15;10;15;20;15];
by = [10;15;20;15;10];
while it < 10    
    ax = ax * 1.5;
    by = by * 1.5;
    
    fill(ax,by,'b','edgecolor','k','linewidth',2)
    it = it + 1;
end

%Question 2
str = input('Type your message (letters and spaces only): ', 's'); % get string
s = double(str)
if s == 75
    disp('1 ’K’ ---> 75')
elseif s == 101
    disp('2 ’e’ ---> 101')
elseif s == 112
    disp('3 ’p’ ---> 112')
elseif s == 67
    disp('4 ’C’ ---> 67')
elseif s == 97
    disp('5 ’a’ ---> 97')
elseif s == 108
    disp('6 ’l’ ---> 108')
elseif s == 109
    disp('7 ’m’ ---> 109')
else
    disp('')
end
    
    


%Question 3 - Part A
figure, grid off, axis off
for xt = 0:1:100
    for yt = 0:1:100
    
       % plot(xt,yt,rand(1,3),'.'); % rand(1,3) was to give the points random colours and '.'as points
       plot(xt,yt,'k.','markers',10); % and this line just prints one spliarty dot...
        
        
    end
end
        


        
       
    
    


