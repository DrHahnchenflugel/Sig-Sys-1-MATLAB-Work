% CH2MP1.m : Chapter 2, MATLAB Program 1
% Script M-file determines characteristic roots of op-amp circuit,
% and prints coefficients of characteristic polynomial

% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Set component values:
R = [1e4, 1e4, 1e4]; C = [1e-6, 1e-6];

% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

% Determine characteristic roots:
lambda = roots(A);

% Generate characteristic polynomial
% p_1 x^n + p_2 x^(n-1) + p_3 x^(n-2)
% In our case, x+1 constants = 3, so x=2
% Resulting in p_1 x^2 + p_2 x + p_1.
% The function below displays p_n V n
char_poly = poly(lambda)
