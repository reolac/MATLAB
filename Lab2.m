% Lab 2
% Huw Price (eeu217)
% 3rd Feburary 2015

close all, clear all, clc;

% Task 1, Qestion 1
a = 1:100

% Task 1, Question 2
b = 100:-2:1


% Task 1, Question 3 

parta = sind([30 60 90 120])
% ...d degree function

partb = cosd([30 60 90 120])
partc = cotd([30 60 90 120])


% Task 1, Question 4
v = 20:25
w = v * 5


% Task 1, Question 5
D = zeros(100);
D(:, 1:2:end) = 2

% Task 1, Question 6 
D' % ' = transpose


% Task 1, Question 7 
E = reshape(1:50, 10, 5)'


% Task 1, Question 8
F = repmat(1:10, 5, 1)
