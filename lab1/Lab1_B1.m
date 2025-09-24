% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Create anonymous function p(t), set to equal 1.0 when 0 <= t < 1
% .* -> element-wise multiplication
% ((t>=0) & (t<1)) creates a boolean array equal to size t (the mask)
%       1 if condition is true, else 0.
p = @(t) 1.0.* ((t>=0) & (t<1));

% Set t (x-axis) to go from -1 to 2, inclusively, with a step of 0.01
t = (-1:0.01:2); 

% Plot p(t) vs t
plot(t,p(t));

% Set labels
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
title('Lab 1 B.1: Figure 1.50');

% Set X axis -1 to 2
% Set Y axis -0.1 to 1.1
axis([-1 2 -.1 1.1]);

