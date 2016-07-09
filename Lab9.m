% Lab 9
% Huw Price (eeu217)
% Qestion 1, Part A

close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.

% Question 2 
figure; 
hold on;
axis square off;
a = imread('Chip.jpg');
croped = a(50:423,50:450);
crop = uicontrol;
original = uicontrol;

% get (crop)
set(crop, 'String', 'Crop','Callback', ['imshow(croped)'], 'Position', [20 150 150 250])
set(original, 'String', 'Revert to original','Callback',['imshow(a)'] , 'Position', [20 20 520 120])
axes('Position',[0.35,0.35,0.6,0.6]);
