close all;
clear all;
clc;


a = [4 1; 0 6];
b = [-5 1; 0 4];

a & b
a~=b
a - b > 3 


for t = 'a':'h'
    disp(t)
end

for v = [1 2 4 6 8 10 6 6 6 14]
    disp([repmat(' ',1,20-v), repmat('.',1,2*v)])
end

c = [1 2 3; 4 5 6; 7 8 9]
for i = c
    disp(i)
    pause(0.0005)
end

a = [0 1 2; 2 1 0];

b2 = a(2,2) && a(2,3)
b3 = a(1,1)+ a(2,3) || a(2,2)- a(2,1)
b4 = a(:,2) > a(:,1)
b5 = b3 && a(1,1) < a(2,2)
b6 = find(a(1, :) == a(2, :))

two = 37: 37 : 10000


%6

N = input('Enter an integer between 10 - 500 :')
if N > 500 || N < 10
    disp('enter another value :' )
else
    disp('you clever boy!!!')
end


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