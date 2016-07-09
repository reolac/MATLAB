close all ;
clear all;
clc;

%Q1
k = randi([-30, 12]);

%Q1 b
A = randi([-40, 10], 20, 20);
A(A< k) = 0;

%Q1 c
c = mean2(A);

%Q1 d
x = A(randi(numel(A)));
%A(randi([1 20]), randi([1 20]))


%Q1 e
co = rand(numel(unique(A)), 3);
imagesc(A), colormap(co), axis equal off

%Q1 f

B = A(randperm(size(A,1),4),:);

%Q1 g
proportion = numel(B(B ~= 0)) / numel(B(B == 0));%numel(B(1:4,:)~=0)

%Q1 h
fprintf('Answer to a) random number between %.5f \n', k)
fprintf('answer to c mean of all non zero elements) %.5f \n', c)
fprintf('answer to d) random element from A %.5f \n', x)
fprintf('answer to g) proportion of non zero elements in B %.5f \n', proportion)

%Q2


