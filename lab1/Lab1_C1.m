clf;
clc;
clear;

f = @(t) exp(-2.*t).*cos(4.*pi.*t); %f equation
u = @(t) 1.0.*(t>=0); %u equation 
g = @(t) f(t).*u(t); %g equation f*u
t = (-2:0.01:2); %time domain and intervals

plot(t,g(t)); %Plot  function
xlabel('t'); 
ylabel('g(2t+1)'); 
grid; %creates gridlines
title('Lab 1 C.1')

