clf; clc; clear;

n_max = 500;
omega0 = 0.1*pi;
%T = 2*pi/omega0 = 20
T = 2*pi/omega0;

% sample a couple of periods
t = linspace(-2*T, 2*T, 4001);

% reconstructions
x1 = Lab3_A5('x1', n_max, omega0, t);
x2 = Lab3_A5('x2', n_max, omega0, t);
x3 = Lab3_A5('x3', n_max, omega0, t);

% plots
figure(1);
plot(t, x1, 'k-'); grid on;
title('x_1 reconstruction (T=20)'); xlabel('t'); ylabel('x_1(t)');
ylim([-2 2]);

figure(2);
plot(t, x2, 'k-'); grid on;
title('x_2 reconstruction (T=20)'); xlabel('t'); ylabel('x_2(t)');
ylim([-0.2 1.2]);

figure(3);
plot(t, x3, 'k-'); grid on;
title('x_3 reconstruction (T=40)'); xlabel('t'); ylabel('x_3(t)');
ylim([-0.2 1.2]);

