% Pre-run clearing
clc;   %Clear command window
clear; %Clear variables from RAM

% Load data for problem
load ELE532_Lab1_Data.mat;

% (a) A(:). Print every element column by column
A(:)

% (b) A([2 4 7]). When counting column-wise, print elements 2,4,7
A([2 4 7])

% (c) [A >= 0.2]. Create a logical array size A
%    a >= 0.2 -> 1, else 0.
[A >= 0.2]

% (d) A([A >= 0.2]). Print every element in A >= 0.2
A([A >= 0.2])

% (e) A([A >= 0.2]) = 0. Create array A with mask:
%    A >= 0.2 is 0 -> 0, else A.
A([A >= 0.2]) = 0