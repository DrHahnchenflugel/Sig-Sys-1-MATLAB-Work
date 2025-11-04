% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

function [D] = a5(Dn)

n = -500:500;
D = Dn;
t = [-300:1:300];
w = pi*0.1;
x = zeros(size(t));

for i = 1:length(n)
x = x + D(i)*exp(j*n(i)*w*t);
end

subplot(2,1,1);
plot(t, real(x), 'k', 'LineWidth', 1.2);
xlabel('t (sec)');
ylabel('Re{x(t)}');
title('Real Part of x_1(t)');
grid;
subplot(2,1,2);
plot(t, imag(x), 'm', 'LineWidth', 1.2);
xlabel('t (sec)');
ylabel('Im{x(t)}');
title('Imaginary Part of x_1(t)');
grid;
end