% Assesed Lab 1
% Huw Price (eeu217)
% 10rd Feburary 2015

close all, clear all, clc;

% Task 1
A = ones(4);
B = ones(4);

C = A * B

D = A .* B %.* is Hadamard product. element wise multiplication of A and B



% Task 2

v =  reshape(((4:-1:1)* 823543), 4, 1) 

% Task 3

E = reshape((200:-2:102), 10, 5)

% Task 4

F = [1.0000; 0.8889; 0.7778; 0.6667; 0.5556; 0.4444; 0.3333; 0.2222; 0.1111; 0];
G = repmat(F, 1, 3)

% Task 5

a = flipud(eye(4)); % flipud() - flips matrix vertically
b = eye(4)*2;
c = flipud(eye(4)*3);
d = ones(4,12)* 8; 
e = eye(4);
f = flipud(eye(4)*2);
g = eye(4)*3;

new_matrix = [a b c; d; e f g]

% Task 6

brick = ones(3,6);
half_brick = ones(3);
gap = zeros(3,1);
gap_row = zeros(1,38);

r = [brick gap brick gap brick gap brick gap brick gap half_brick; gap_row; 
    half_brick gap brick gap brick gap brick gap brick gap brick; gap_row;
    brick gap brick gap brick gap brick gap brick gap half_brick; gap_row;
    half_brick gap brick gap brick gap brick gap brick gap brick; gap_row;
    brick gap brick gap brick gap brick gap brick gap half_brick; gap_row;
    half_brick gap brick gap brick gap brick gap brick gap brick; gap_row;
    brick gap brick gap brick gap brick gap brick gap half_brick; gap_row;
    half_brick gap brick gap brick gap brick gap brick gap brick; gap_row;
    brick gap brick gap brick gap brick gap brick gap half_brick; gap_row;
    half_brick gap brick gap brick gap brick gap brick gap brick; gap_row;]

imagesc(r)
colormap([0.7 0.7 0.7;0.5 0 0])
axis equal off





