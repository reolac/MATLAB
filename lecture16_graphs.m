%6.3 from book
close all, clear all, clc

% figure 
% axis([0 1 0 1])
% axis square
% hold on
% for i = 1 :5000
%     x = rand; 
%     y = rand;
%     if x > y 
%         plot(x,y, 'bx')
%     else
%         plot(x,y, 'r^')
%     end
%     drawnow
% end

xy= rand(5000, 2);
index = xy(:,1) > xy(:,2);
figure 
axis([0 1 0 1])
axis square
hold on
plot(xy(index,1),xy(index,2),'bx')
plot(xy(~index,1),xy(~index,2),'r^')

% page 63 problem 4
%a 
close all, clear all, clc

k = rand*(12.6 - (-30.4)) - 30.4

%b
A = randi([-40,10],[20,20]);
A (A < k) = 0

%c
mean(A(A~=0))

%d
A(randi(20),randi(20))

% e
nueA = numel(unique(A));
col = rand(nueA,3);
imagesc(A);
axis equal off
colormap(col)




