clf;
clc;
clear;

f = @(t) exp(-2).*exp(-2.*t).*cos(4.*pi.*t);
u = @(t) 1.0.*(t>=0);
g = @(t) f(t).*u(t);
s = @(t) g(t+1);
t = [-2:0.01:4];

plot(t,s(t)); 
xlabel('t'); 
ylabel('s(t)'); 
grid; 
title('Lab 1 C.2')