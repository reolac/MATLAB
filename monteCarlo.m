clear all 
clc
close all
 
T= 100000;
x = rand(T,1); y = rand(T,1);
index = sqrt((x-0.5).^2 + (y-0.5).^2) < 0.5;

my_pi = mean(index)*4;
fprintf('My pi = %.10f\n', my_pi)
fprintf('True pi = %.10f\n', pi)