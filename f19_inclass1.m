% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github (Not graded but will provide feedback if request). For graded
% homeworks or to receive feedback you must use a live script
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
%%ANSWER: Part 1 is adding an integer so 1 + 1 = 2. Part 2, you are adding a string which doesn't really make sense.
%%Somehow substituting a '0' returns 96, suggesting that the base value is 48 but for what reason i can't figure out.

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
%%Answer: the difference is that 'x' is integer and 'a' is a string. With integer this expressing put it into an array while
%% the string is concatenated. x2b the semicolon puts the 2nd matrix integer onto the next line.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%%Answer: == is asking for equivalence. 1 is not equivalent to 2. But then you say a = b so that now both are 2. Now they are
%% equivalent in value.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%% Answer: asking for equivalence of proportional array 1 to 0, 2 to 2, 4 to 7. Gives False, True, False.

%explain why this gives an error:

b = [2, 3];
a == b

%% Answer: dimensions aren't the same so can't be compared.

%explain why this does not give an error
b = 2;
a == b 

%% Answer: this is now comparing matrix to integer. The equivalence compares the integer to each matrix position.

%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
%% Answer: combines 2 arrrays. 1:10 and then 10:20 such that it just looks like 1:20 at the end.

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
%%Answer:
2:2:20
oneToTen = 2:2:10
[oneToTen, oneToTen+10]

% 2. odd numbers from one to nineteen
%%Answer:
1:2:20
oneToTen = 1:2:10
[oneToTen, oneToTen+10]

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
%%Answer:
20:-2:2
fliplr(2:2:20)
oneToTen = 0:2:10;
fliplr([oneToTen, oneToTen+10])

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%%Answer: lr means just left to right, ud for up down.
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%%Answer: m1*m2 the array multiplication is not by element and it becomes something like a binomial reaction which I'm not familiar
%%for arrays (I think its 1st row by 1st column or something like that). m1.*m2 is the correct way to multiply matrices by each individual element placement.

%explain this command:
m2./m1

%% Answer: simply division per individual element
%extra credit: explain why this command gives a warning:
m2/m1
%% Answer: 1,1; 1, 1 is singular and can't be inversed. Matrices division can often have more than 1 solution.
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);
%%Answers: a matrix 5 by 5 from 0 to 1 value.
%explain what is being done in each of the following lines

rand_nums(2,3)
%%Answer: gives back the value at 2 by 3 position

rand_nums(2:4,3)
%%Answer: gives values at 2,3 3,3 and 4,3
rand_nums(1:2,3:4)
%%Answer: 1,3 1,4 2,3 2,4
rand_nums(:,2)
%%column 2
rand_nums(1,:)
%%row 1
rand_nums(:,[1 3 5])
%% all rows by 1, 3 ,5 columns.

