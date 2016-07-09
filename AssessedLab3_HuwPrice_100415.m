% Assessed Lab 3
% Huw Price (eeu217)
% Qestion 1, Part A

close all % Close all figures.
clear all % Remove all variables.
clc       % Clear the console output.



C = imread('Stonehenge.jpg');
G = rgb2gray(C);
figure 
imshow(G)

%Question 1, Part B

M = mean(mean(G)); % average gray value of entire image
index_mean_gray_low = G(:,:,1) > 134.5558;
index_mean_gray_high = G(:,:,1) < 144.5558;
mid_gray = index_mean_gray_low & index_mean_gray_high;
fprintf('Pixels whose grey level intensity is within 10 of the average grey value is %i\n', numel(find(mid_gray)));

%Question 1, Part C

ir = G(:,:,1) > 134.5558 & G(:,:,1) < 144.5558; % average values
ig = true;
ib =  G(:,:,1) > 134.5558 & G(:,:,1) < 144.5558;
RMP = ir(:,:,1);
GMP = ig(:,:,1);
BMP = ib(:,:,1);

RMP(ir) = 127;
GMP(ig) = 0;
BMP(ir) = 127;
%gray meanish pixels replaceed with purple
purple_henge = cat(3,RMP,GMP,BMP);
figure, imshow(purple_henge)

%Question 1, Part D


%Question 2, PArt A

sh = image_shred('Chip.jpg', 1)



