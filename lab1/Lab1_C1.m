clf;
clc;
clear;

f = @(t) exp(-2.*t).*cos(4.*pi.*t);
u = @(t) 1.0.*(t>=0);
g = @(t) f(t).*u(t);
t = (-2:0.01:2);

plot(t,g(t)); 
xlabel('t'); 
ylabel('g(2t+1)'); 
grid; 
title('Lab 1 C.1')

