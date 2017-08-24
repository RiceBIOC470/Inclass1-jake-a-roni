%% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
% In the first section, x is given the value of the number 1. Then y is
% given the value of x + x, since x is a number(1), 1+1 is 2 and it outputs
% 2 for y. In the second section, a is assigned a string, specified by ''.
% Then b is given the value of '1' = '1' and MATLAB adds those strings as
% 49 + 49 and outputs 98
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

size_x2 = size(x2)
size_a2 = size(a2)
size_x2b = size(x2b)

% we are assigning arrays to different variables in the workspace
% a2 is an array with a string in it and x2 is an array of two numbers.
% Both x2 and a2 are 1 by 2 matrices. x2b is a 2 by 1 matrix (2 rows, 1
% column)
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

% a is assigned a different value after the first ==. So the first was
% false, the second is true and gives you a new output

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% the output is telling you which items in the matricies are equal. 0 for
% false, 1 for true. 

%explain why this gives an error:

b = [2, 3];
%a == b
% you cannot use this command on matrices of different dimensions. a and b
% can't be compared in this way because a is a 1 by 3 and b is a 1 by 2
% matrix

%explain why this does not give an error
%b = 2;
%a == b 

% b is not a matrix, you can't compare a matrix to a number
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% you're saying make an array that includes 1 through 10 and also 10+(1
% through 10). oneToTen+10 == 11 12 13 14....20

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
evenTwoToTwenty = 2:2:20
evenTwoToTwentyB = 2*oneToTen

% 2. odd numbers from one to nineteen
oddOneToThirteen = 1:2:19
oddOneToThirteenB = oneToTen*2 - ones(1,10)

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

weirdarrayA = fliplr(evenTwoToTwenty)
weirdarrayB = fliplr(2*oneToTen)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%it's trying to horizontally flip the array (flips left to right), but oneToTen' is a vertical
%array, so you need flipud to flip up to down
%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%the first is the cross product of two 2 by 2 matrices, the second is the
%dot product?

%explain this command:
m2./m1

%now you're dividing?

%extra credit: explain why this command gives a warning:
m2/m1
% don't know, but usually NaN is not a number
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5)

%explain what is being done in each of the following lines

rand_nums(2,3)

%selecting an element in the matrix rand_nums (second row, third column)

rand_nums(2:4,3)

%selecting the 3rd entry in rows 2-4 (3 total)

rand_nums(1:2,3:4)

%selecting the third and fourth entries in rows 1 and 2 of rand_nums

rand_nums(:,2)

% all rows, column 2

rand_nums(1,:)

% row 1 all columns

rand_nums(:,[1 3 5])

% the 1st, 3rd, and 5th element in each row