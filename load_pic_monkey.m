close all 
clear all 
clc
load mandrill
ma = uint8(ind2rgb(X,map)*255); % convert index to RGB then drom double to unit 8 with the 255 multi

figure, imshow(ma) % show

% count nearly red ones

index_red = ma(:,:,1) > 220;
index_green = ma(:,:,2) < 50;
index_blue = ma(:,:,3) < 50;
% concatenate to a 3d matrix 
mc = cat(3,index_red,index_green,index_blue);
% use numel(soemthing)
% so we need numel(find("reddish points"))

reddish  = index_red & index_green & index_blue;

numel(find(reddish));
fprintf('Number of reddish points is %i\n', numel(find(reddish)));
%reason it doesnt work is beacuse the mokey is a double and not unit 8

%what if i wsant a color that isnt red
%but about [230, 17, 158] what will change?
%yes the indecies how?
index_red = ma(:,:,1) > 215 & ma(:,:,1) <245;
index_green = true; %ma(:,:,2) > 0 & ma(:,:,2) <34;
index_blue = true; %ma(:,:,3) > 143 & ma(:,:,3) <173;
%the other color values dont work as there is no such colour on the monkey

bl  = index_red & index_green & index_blue;
fprintf('Number of blah..ish points is %i\n', numel(find(bl)));



%[166,192,197]
%duck egg blue
% do it similar to the coins
RMP = ma(:,:,1);
GMP = ma(:,:,1);%or 2
BMP = ma(:,:,1);%or 3

RMP(index_red) = 166;
GMP(index_green) = 192;
BMP(index_blue) = 197;
%reddish pixels replaceed with single new color
new_monkey = cat(3,RMP,GMP,BMP);
figure, imshow(new_monkey)



