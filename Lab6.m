clear all
close all
clc
%Q1
%a
a =  imread('coins.png'); 


%Concatenation

b = cat(3,a,a,a); % makes 3 panes odf the same gray image. B will be RGB but look gray
%         R,G,B
figure, imshow(b)

ind = a < 100 % experimaenting with the ind valeu
% a(ind) all the dark pixels will be TRUE

br = a;% the red, andf THEN
br(ind) =0; %zero fro background pixels
bg = a;
bg(ind) = 50; % dark gereen
bb = a; % the blue, andf THEN
bb(ind) =0; %zero fro background pixels

b = cat(3, br,bg,bb);
figure, imshow(b);

br(ind)= 80;
bg(ind)= 0;
bb(ind)= 0;

mm = cat(3,br,bg,bb);
figure, imshow(mm)

%put the two matricies together
mmi = [mm,mm];
figure, imshow(mmi);


%change the foreground to orange, we need to take the panes apart 

%red pane of be
rp = b(:,:,1);
gp = b(:,:,2);
bp = b(:,:,3);

bp(~ind) = 0; % not index this will select all pixels that are not background.
%BTW assesd labs exact color doesnt matter just that it id similar to
%required
rp(~ind) = 250; % allot of red to make up orange
gp(~ind) = 120; %guestimate
oc = cat(3,rp,gp,bp);
figure, imshow(oc)% Yatsy!

%last question crop the coin - use exisitng taught tools
%imcrop is not an option it should be excluselvy menyioned in a lab
%need to see aprox where in the image to crop / the intrest is
%suppose makesure that the position is within [0,1] on the rows and colums
%rows approx from 0.56 to 0.75
%colums from 0.25 to 0.4267
%How to get actual row numbers and colum numbers

s = size(a); %s(1) is the totla number of rows
%s(2) is total number of colums
r = round([0.46 0.75]*s(1)); % two element array
c = round([0.23 0.47]*s(2));
% now to crop
cc = b(r(1):r(2),c(1):c(2),:); % cropped coin
figure, imshow(cc);

%-------------------------------------------------------------
%%import image of choice count points thast are nearly red nearly green
%%nearly blue and nearly yellow.
% use the mokeny inbuiklt into matlab






