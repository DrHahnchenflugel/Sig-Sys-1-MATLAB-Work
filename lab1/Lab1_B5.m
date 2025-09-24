% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% From Lab1_B1.m
p = @(t) 1.0.*((t>=0)&(t<1));

% From Lab1_B2.m
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);

% From Lab1_B3.m
n_1 = @(t) n(0.5 .* t);
n_2 = @(t) n_1(t + 0.5);

% From Lab1_B4.m
n_3 = @(t) n(t + 0.25);
n_4 = @(t) n_3(0.5 .* t);

% Define x-axes t from -1 to 4 by step 0.01
t = (-1:0.01:4); 

% Create subplot - 1 row, 2 cols, position 1
subplot(1,2,1);
plot(t, n_2(t));

% Set labels
xlabel('t'); 
ylabel('n_2(t) = n1(t + (1/2))');
title('Lab 1 B.5: t vs. n_2(t)');
legend('n_3(t)')

% Create subplot - 1 row, 2 cols, position 2
subplot(1,2,2);
plot(t, n_4(t));

% Set labels
xlabel('t'); 
ylabel('n_4(t) = n_3((1/2)*t)');
title('Lab 1 B.5: t vs. n_4(t)');
legend('n_4(t)')
