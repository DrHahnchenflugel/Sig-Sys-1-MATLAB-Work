% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% From Lab1_B1.m
p = @(t) 1.0.*((t>=0)&(t<1));

% Defining r(t) = t*p(t)
r = @(t) t.*p(t);

% Defining n(t) = r(t) + r(-t + 2)
n = @(t) r(t) + r(-t + 2);

%
% First window, 
%
figure (1); 

% Set t (x-axis) to go from -1 to 2, inclusively, with a step of 0.01
t = (-1:0.01:2); 

plot(t, r(t));

% Set labels
xlabel('t'); 
ylabel('r(t) = t * p(t)');
title('Lab 1 B.2: t vs. r(t)');
legend('r(t)')

%
% Second window, 
%
figure (2); 

% Set t (x-axis) to go from -1 to 2, inclusively, with a step of 0.01
t = (-1:0.01:2); 

plot(t, n(t));

% Set labels
xlabel('t'); 
ylabel('n(t) = p(t) + p(-t+2)');
title('Lab 1 B.2: t vs. n(t)');
legend('n(t)')

