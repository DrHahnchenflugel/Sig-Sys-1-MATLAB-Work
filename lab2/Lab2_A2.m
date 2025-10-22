% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Set component values:
R = [1e4, 1e4, 1e4];
C = [1e-6, 1e-6];

% Determine coefficients for characteristic equation:
coefficients = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

% Determine characteristic roots:
lambda = roots(coefficients);

% Generate characteristic polynomial
% p_1 x^n + p_2 x^(n-1) + p_3 x^(n-2)
% In our case, x+1 constants = 3, so x=2
% Resulting in p_1 x^2 + p_2 x + p_1.
% The function below displays p_n V n
char_poly = poly(lambda);

% Set up time range
t = [0:0.0005:0.1];

% Set up u(t)
u = @(t) 1.0.*(t>=0);

% Find the lambdas
l1 = lambda(1);
l2 = lambda(2);

% H(s) = Y/X = k/(s^2 + a1 s + a2) where k = -1/(R1 R3 C1 C2)
k = -1/(R(1)*R(3)*C(1)*C(2));

h = (k/(l1-l2)) * (exp(l1.*t) - exp(l2.*t)).*u(t);

figure(1);
plot(t,h)
grid on
xlabel('t')
ylabel('h(t)')
grid; %creates gridlines
title('Lab 2 A.2')
legend('h(t)')
