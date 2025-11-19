clf;
clc;
clear;

N = 100;
PulseWidth = 10;
t = [0:1:(N-1)]; 
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];

z_time = conv(x, x);
t_conv = [0:1:length(z_time)-1];

figure;
stairs(t_conv, z_time);
grid on;
title('Problem A.1: z(t) = x(t) * x(t) (Convolution)');
xlabel('Time Index');
ylabel('Amplitude');
axis([-10, length(z_time), -1, max(z_time) + 1]);
