clc;
close all;

% We need to load image coins.png

a = imread('coins.png');

% Create RGB image with 3 panes of matrix A

% 3 Methods
% CONCATENATION

b = cat(3,a,a,a); % makes 3 panes of the same grey image of A.
% B will be RBG but look grey
figure, imshow(b); % run

% Low values of grey intensity means dark. We can organise the index
% To tell us where the these low values are

ind = a < 100;
% We don't know whether 50 is a good constant for now. We will be
% experimenting to get a good value here.
% If i type a (ind) I will have all those dark pixels
% as "TRUE" - I am addressing only them.
% For these pixels I want the RGB to be dark green. THen I may use 0 for
% the red, 50 for the green and 0 for the blue. Well, it was not very smart
% to create b first... Let's create the three panes of b seperately

br = a;
br (ind) = 0; % for the background pixels
bg = a;
bg (ind) = 50; % for dark green
bb = a;
bb (ind) = 0; % notice that I assign the same value
% to ALL these pixels -just 1 MATLAB command
% Now ten - compose b
b = cat(3, br, bg, bb);
% and show it
figure, imshow(b);

% We can solve part (d) now - multiply the money 
% We need to change the background to dark red
br(ind) = 80;
bg(ind) = 0;
bb(ind) = 0;
% Concatenate in a new image
mm = cat(3, br, bg, bb);
figure, imshow(mm); % the only change will be the background
% Now we need to put two such images together. There is a simplier way than
% concatenation in this case. The two images can be stuck together just as
% matrix [mm mm Snugly next to one another
% Then our money image is

mmi = [mm,mm];
figure,imshow(mmi);

% Let's make the forground orange. Orange is a mix of red and green, which
% more of the red. We have image b already, with the green background. We
% have image b already, with the green background. Tkae the 3 panes apart:
% (we had them but then we modified them)
rp = b(:, :, 1); % red pane of b
gp = b(:,:,2); % green pane of b
bp = b(:, :,3); % blue pane of b

%The blue pane should have 0s in the foreground: 
bp(~ind) = 0;
% pixels that are NOT background. Similary, (BTW in your assessed labs, the
% EXACT color does not matter, as long as it is similar to what is required)
rp (~ind) = 250; % a lot of red to make up for the orange
gp(~ind) = 120; % green!?!??
% And, concatenante
oc = cat(3, rp, gp, bp);
figure, imshow(oc);

% Last for this problem - crop the coin
% As I mentioned before, I will expect you to use tools that I taught you.
% So "imcrop" is not an option. Actualy, this should be explitically
% mentioned.

% How do we go about the crop? We need to see approximately where in the
% image our object of interest is. Suppose that measure the position [0,1]
% on the rows, and within [0,1] on the colums.

% What would you say, rows = approximately - from 0.56 to 0.7? your turn
% How about columns? 0.25 to 0.4267
% How we do get the actual row numbers and column numbers
s = size(a); % s(1) is the total number of rows 
%(2) is the total number of columns
% Magic happens now
r = round([0.46, 0.72]*s(1)); % two-element array with the starting row
% and the ending row
c = round([0.22, 0.4267]*s(2));
% Now I do the cropping
cc = b(r(1):r(2),c(1):c(2),:); % cropped coin
figure, imshow(cc);

% Next problem. Input an image of your choice. Count the point that are
% "nearly red", "nearly green", "nearly blue", nearly yellow"

% Let's choose an image. These was an image of a monkey within MATLAB
% Convert image from indext to rgb

load mandrill
ma = uint8(ind2rgb(X,map)*255);

% Now we have the monkey image in TGB
imshow(ma)
% Let's count the "nearly red" points. The proportion of these should be
% failry large. Well,... these points should have HIGH red, LOW green and
% LOW blue
index_red = ma(:,:,1) > 220;
index_green = ma(:,:,2) < 50;
index_blue = ma(:,:,3) < 50;
% Again the constants are up to me - cam tweak them. What do I do with these
% 3 indicies now? YOur turn. Each index is a matric of the same size as the
% image
% Concatenate them into a 3D matrix - then what?
% OK, here is how we find out HOW MANY elements we have in the structure
% nume1(something).
% So, we need numel(find("All reddish points"))
% What do we place here?

reddish = index_red & index_green & index_blue;

fprintf('Number of reddish points is %i\n',...
    numel(find(reddish)));

% What if I wanted a color that was not reddish, but say "about" [230, 17,
% 158] What will change?

index_red = ma(:,:,1) > 215 & ma(:,:,1) < 245;
index_green = true; %ma(:,:,2) > 0 & ma(:,:,2) < 34;
index_blue =  true; %ma(:,:,3) > 143 & ma(:,:,3) < 173;
bl = index_red & index_green & index_blue;
fprintf('Number of blah.. ish points is %i\n',...
    numel(find(bl)))

% Ok let's replace the reddish colour with something else. Propose a colour
% ... [166, 192, 197]

% How do we do this now?
% You must PLACE this colour in the image, not discover it! Where the
% reddish was

% Reassign based on the index  - correct!

RMP = ma(:, :, 1);
GMP = ma(:, :, 1);
BMP = ma(:, :, 1);

RMP(index_red)  = 166;
GMP(index_green) = 192;
BMP(index_blue) = 197;
% The reddish pixels are replaced with the single new colour 
new_monkey = cat(3, RMP, GMP, BMP);
figure,imshow(new_monkey)
