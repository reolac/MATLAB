% Lab 1
% Huw Price (eeu217)
% Qestion 1

close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.

% Equivalent
close all, clear all, clc;

i = 2; % Loop counter. Ouprut suppressed by ;
no_iterations = 2;

b = i + no_iterations;

for i = 1:10
    disp (i) % Ctrl + i indents all the code
end


% Matrices (plural) - Matrix (singular)
A = [ 1 2 3; 4 5 6 ]; % or A = A = [ 1,2,3; 4,5,6] -- ; represents a new line

Z = zeros(2,4); % creates empty marix of 0's zeroa( rows , columns )
O = ones(3,5); % ones (rows , columns) 
I = eye(3); % eye( dimension )  identity matrix

T = A * I; % matrix multiplication


R = rand(3 , 4); % rand(3,4)
RN = randn(6);
RI = randi(10); % eandom integer between 0 and 10

% ctrl + r comment section 
% ctrl + t remove block comment


% Graphics
figure
X = rand(10000, 1);
Y = rand(10000, 1);
plot(X, Y, 'k.') % after plot(x,y '.') the dot plots dots instead of lines g. makes the dots green r. red k. black y. yellow
axis square % makes the plotted axis square rather than rectangular !!!
