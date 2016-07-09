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