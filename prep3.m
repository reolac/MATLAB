h = bar([2 3 1 6])
get(h)

set(h, 'BaseValue', 2)

hh = bar(randn(10,2))

bar3(rand(10,2))
rotate3d

pie([2 4 3 5], [0 1 0 0], {'North', 'South', 'East', 'West'})
pie3([2 4 3 5], [0 1 0 0], {'North', 'South', 'East', 'West'})

a = imread('gantrycrane.png');
agr = rgb2gray(a);
imshow(agr)

% Exercise 6.3

clear all, close all, clc
figure
axis([0 1 0 1])
axis square
hold on
for i = i:5000
    x = rand;
    y = rand;
    if x > y
        plot(x,y,'bx')
    else
        plot(x, y,'r^')
    end
    drawnow
end

xy = rand(5000, 2);
index = xy(:,1) > xy (:,2);
figure
axis([0 1 0 1])
axis square
hold on
plot(xy(index,1),xy(index,2),'bx')
plot(xy(~index,1), xy(~index,2), 'r^')

% Page 63 Problem 4

close all, clear all, clc
% Problem a
k = rand*(12.6 - (-30.4)) - 30.4;
% Problem b
A = randi([-40, 10], [20, 20]);
A(A < k) = 0;
% Problem c
mean(A(A~=0));
% Problem d
A(randi(20), randi(20));
% Problem e
nueA = numel(unique(A));
col = rand(nueA, 3);
imagesc(A)
axis equal off
colormap(col)

