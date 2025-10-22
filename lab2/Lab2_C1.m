% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Set up u(t)
u = @(t) 1.0 .* (t>=0);

% Define h1..h4
h1 = @(t) exp((1/5) .* t) .* u(t);
h2 = @(t) 4 .* exp((-1/5) .* t) .* u(t);
h3 = @(t) 4 .* exp(-1 .* t) .* u(t);
h4 = @(t) 4 .* (exp((-1/5) .* t) - exp(-1 .* t)) .* u(t);

% Define t
t = [-1:0.001:5];

% Plot h1..h4
figure(1);
hold on;
grid on;
xlabel('t');
ylabel('h(t)');
title('Lab 2 C.1')
plot(t,h1(t),'LineWidth',3);
plot(t,h2(t),'LineWidth',3);
plot(t,h3(t),'LineWidth',3);
plot(t,h4(t),'LineWidth',3);
xlim([0 5]);
legend('h1(t)=e^(^t^/^5^)u(t)','h2(t)=4e^(^-^t^/^5^)u(t)',
       'h3(t)=4e^(^-^t^)u(t)','h4(t)=4(e^(^-^t^/^5^)-e^(^-^t^))u(t)',
       'FontSize', 14);
hold off;
