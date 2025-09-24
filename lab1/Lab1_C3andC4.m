clf;
clc;
clear;

t = [-2:0.01:4]; %time domain and intervals
u = @(t) 1.0.*(t>=0); %u function
figure(1); %first figure tab
hold on %function to plot mutiple lines on one plot

for a = 1:2:8 %loop for equation lines
s = @(t) exp(-2).*exp(-a.*t).*cos(4.*pi.*t).*u(t); %s equation
plot(t,s(t)); %plot function
title('Lab 1 C.3')
xlabel('t');
ylabel('s(t)');
grid; %creates gridlines
end

legend('a=1', 'a=3', 'a=5', 'a=7') %creates legend for the plot

hold off %end of line plotting

alpha = 1:2:8; %defining vector of alpha values
t = (0:0.01:4)'; %time domaain and intervals
T = t.*ones(1,4); %creating time matrix

figure(2); %creating figure 2 tab

% Compute H(t) for each alpha value
% exp(-2) is a constant scaling factor
% exp(-T*diag(alpha)) creates element-wise decaying exponentials with different alpha values
% cos(4*pi*T) is the cosine modulation
% u(T) is the unit step function applied to T
H = exp(-2).*exp(-T*diag(alpha)).*cos(4.*pi.*T).*u(T); 

hold on; %function to plot all lines on one plot

plot(t,H); %plot function
title('Lab 1 C.3 Matrix + Vector'); 
xlabel('t'); 
ylabel('h(t)'); 
grid;
legend('a=1', 'a=3', 'a=5', 'a=7'); 

hold off; 

size(T) %Problem C.4 finds size of matrix...