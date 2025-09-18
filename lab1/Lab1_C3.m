clf;
clc;
clear;


alpha = 1:2:7;
t = [-2:0.01:4];
s_alpha = @(t) exp(-2).*exp(-t*diag(alpha)).*cos(4*pi*t).*u(t);
plot(t, s_alpha(t)); 

xlabel("t"); ylabel("s_alpha(t)"); grid; title("Assignment C.3")