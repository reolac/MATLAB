function [O] = image_shred( I , m )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
k = imread(I);
if m == 1
    for i = C(1:72)
    x = rand;
    plot([x x],[0 1],'c-')
    end
elseif m == 2
    for i = C(1:72);
    y = rand;
    plot([0 1],[y y],'k-');
    end
elseif m == 3
    for i = C(1:72);
    x = rand;
    y = rand;
    plot([x x],[0 1],'y-');
    plot([0 1],[y y],'y-');
    end
else
    disp('Enter 1, 2 or 3 for m.')
end

    
figure        
S = k * m;
O = imshow(S)

end

