clc
cls
clear

g = @(t) f(t).*u(t);
u = @(t) 1.0.*(x>=0);
t = (-2:0.01:2);
plot(t,g(2*t+1)); xlabel('t'); ylabel('g(2t+1)'); grid;
