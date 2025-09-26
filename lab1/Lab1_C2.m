clf;
clc;
clear;

f = @(t) exp(-2).*exp(-2.*t).*cos(4.*pi.*t); %f equation
u = @(t) 1.0.*(t>=0); % u equation
g = @(t) f(t).*u(t); % g Equation... f*u
s = @(t) g(t+1); %s equation g(t+1)
t = [-2:0.01:4]; %time Domain and intervals

plot(t,s(t)); %Plot function for s
xlabel('t'); 
ylabel('s(t)'); 
grid; %creates gridline for plot
title('Lab 1 C.2')
legend('s(t)')