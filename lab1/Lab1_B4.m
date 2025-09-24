% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% From Lab1_B1.m
p = @(t) 1.0.*((t>=0)&(t<1));

% From Lab1_B2.m
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);

% Defining n_3(t) = n(t + (1/4))
n_3 = @(t) n(t + 0.25);

% Defining n_4(t) = n_3((1/2)*t)
n_4 = @(t) n_3(0.5 .* t);

%
% First window, 
%
figure (1); 

% Set t (x-axis) to go from -1 to 3, inclusively, with a step of 0.01
t = (-1:0.01:3); 

plot(t, n_3(t));

% Set labels
xlabel('t'); 
ylabel('n_3(t) = n(t + (1/4))');
title('Lab 1 B.4: t vs. n_3(t)');

%
% Second window, 
%
figure (2); 

% Set t (x-axis) to go from -1 to 4, inclusively, with a step of 0.01
t = (-1:0.01:4); 

plot(t, n_4(t));

% Set labels
xlabel('t'); 
ylabel('n_4(t) = n_3((1/2)*t)');
title('Lab 1 B.4: t vs. n_4(t)');