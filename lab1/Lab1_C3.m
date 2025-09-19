clf;
clc;
clear;

t = [-2:0.01:4];
u = @(t) 1.0.*(t>=0);
figure(1);
hold on

for a = 1:2:8 
s = @(t) exp(-2).*exp(-a.*t).*cos(4.*pi.*t).*u(t);
plot(t,s(t)); 
title('Lab 1 C.3')
xlabel('t');
ylabel('s(t)');
grid;
end

legend('a=1', 'a=3', 'a=5', 'a=7')

hold off

alpha = 1:2:8;
t = (0:0.01:4)';
T = t.*ones(1,4);

figure(2);

H = exp(-2).*exp(-T*diag(alpha)).*cos(4.*pi.*T).*u(T);

hold on;

plot(t,H); 
title('Lab 1 C.3 Matrix + Vector'); 
xlabel('t'); 
ylabel('h(t)'); 
grid;
legend('a=1', 'a=3', 'a=5', 'a=7'); 

hold off; 
