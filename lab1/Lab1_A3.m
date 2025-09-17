clc;
clf;
clear;

f = @(t) exp(-t).*cos(2*pi*t);
t = (-2:0.1:2); 

g = @(t) exp(-t);

title('Lab 1 A.3: Comparision of A.2 and Figure 1.46')
xlabel('t'); 
ylabel('f(t)'); grid;

%%%
hold on

f(t);
plot(t,f(t), '*-g')
g(t);
plot(t,g(t), '*-r')

hold off
