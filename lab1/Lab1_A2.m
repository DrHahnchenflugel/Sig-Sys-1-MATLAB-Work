clf;
clc;
clear;
f = @(t) exp(-t);
t = [-2,-1,0,1,2];
f(t);

plot(t,f(t), '*-r');
title('Lab 1 A.2: Function e^-t for 5 points [-2,-1,0,1,2]')
xlabel('t');
ylabel('f(t)'); 
grid;
legend('f(t)')
