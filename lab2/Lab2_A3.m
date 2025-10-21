function [lambda] = Lab2_A3(R,C)
% Lab2_A3.m : Lab 2, MATLAB Program A3
% Function M-file finds characteristic roots of ap-amp circuit
% INPUTS:   R = length-3 vector of resistances
%           C = length-2 vector of capacitances
% OUTPUTS:  lambda = characteristic roots

% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

% Determine characteristic roots:
lambda = roots(A);

% TO RUN, open COMMAND WINDOW and type {var} = Lab2_A3([1e4,1e4,1e4],[1e-9,1e-6])
% SHOULD RETURN
% lambda =
%
%   -150.0 + 3158.7i
%   -150.0 - 3158.7i
