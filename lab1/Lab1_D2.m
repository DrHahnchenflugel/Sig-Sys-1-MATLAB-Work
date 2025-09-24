% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Load data for problem
load ELE532_Lab1_Data.mat;

% Copy B
B_1 = B;
B_2 = B;

% PART A/C
tic;
% Get dimensions
[rows, cols] = size(B);

% Nested loops
for i = 1:rows
    for j = 1:cols
        if abs(B_1(i,j)) < 0.01
            B_1(i,j) = 0;
        end
    end
end
toc

% PART B/C
% Indexing Features
tic;
B_2(abs(B_2) < 0.01) = 0;
toc