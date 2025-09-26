clf;
clc;
clear;
f = @(t) exp(-t).*cos(2.*pi.*t);
t = (-2:2);
f(t);
subplot(2,1,1)
plot(t,f(t));
title('Lab 1 A.1: Figure 1.46')
xlabel('t');
ylabel('f(t)'); 
grid;
legend('f(t)')

g = @(a) exp(-a).*cos(2.*pi.*a);
a = (-2:0.01:2);
g(a);
subplot(2,1,2)
plot(a,g(a));
title('Lab 1 A.1: Figure 1.47')
xlabel('a');
ylabel('g(a)'); grid;
legend('g(a)')
