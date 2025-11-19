clf;
clc;
clear;

N = 100;
PulseWidth = 10;

t = 0:N-1;
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

Xf = fft(x);
Z = Xf .* Xf
