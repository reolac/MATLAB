% L1
% Michael Smith (eeu213)
% Q1

close all   % Close all figures
clear all   % Remove all variables
clc         % Clear the console output

close all, clear all, clc;

i = 2; % Loop counter
no_iterations = 2;

% dear algebra, stop asking me to find your x and don't ask y

b = i + no_iterations;

for i = 1: 10
    disp(i)
end

% you merely adopted the matlab

% i was born in it

% molded by it

% but why you gotta be so ruudddee

A = [1, 2, 3; % i missed you matrix
    4, 5, 6];

Z = zeros(2, 4); % zeroes heroes 

O = ones(3, 5);% one is the lonelist number that there will ever be

I = eye(3);

T = A * I;

R = rand(3, 4)

RN = randn(6)
RI = randi(100,5)

figure
X = rand(10000, 1)
Y = rand(10000, 1)

plot(X, Y, 'k.')
