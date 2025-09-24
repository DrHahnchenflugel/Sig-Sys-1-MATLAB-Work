% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% From Lab1_B1.m
p = @(t) 1.0.*((t>=0)&(t<1));

% From Lab1_B2.m
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);

% Defining n_1(t) = n((1/2) t)
n_1 = @(t) n(0.5 .* t);

% Defining n_2(t) = n1(t + (1/2))
n_2 = @(t) n_1(t + 0.5);

%
% First window, 
%
figure (1); 

% Set t (x-axis) to go from -1 to 5, inclusively, with a step of 0.01
t = (-1:0.01:5); 

plot(t, n_1(t));

% Set labels
xlabel('t'); 
ylabel('n_1(t) = n((1/2) t)');
title('Lab 1 B.3: t vs. n_1(t)');
legend('n_1(t)')

%
% Second window, 
%
figure (2); 

% Set t (x-axis) to go from -1 to 4, inclusively, with a step of 0.01
t = (-1:0.01:4); 

plot(t, n_2(t));

% Set labels
xlabel('t'); 
ylabel('n_2(t) = n1(t + (1/2))');
title('Lab 1 B.3: t vs. n_2(t)');
legend('n_2(t)')