% Question 1

% a
k = randi([-30 12]);

%b
A = randi ([-40 10], 20 , 20 );
A(A <= k) = 0;

%c
B = mean2(A);

%d
c = A(randi([1 20]), randi([1 20]));

%e
imagesc(A)
cMap = rand(3,3)
map = ((numel(unique(A))))

%f
C = A(randperm(size(A,1),4), :)

%e
proportion = numel(C(C ~= 0)) / numel(C(C == 0))

%g
fprintf('The random number between -30.4 and 12.6 is %.5f\n', k)
fprintf('The mean of all of the elements in Matrix A is %.5f\n', B)
fprintf('A random element from Matrix A is %.5f\n', c)
fprintf('The proportion of zero to non-zero numbers is %.5f', proportion)

% Question 2
%a
