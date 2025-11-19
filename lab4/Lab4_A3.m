clf;
clc;
clear;

N = 100;
PulseWidth = 10;

t = 0:N-1;
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

Xf = fft(x);
Z = Xf .* Xf;

% (-n/2 : n/2-1) is range after fftshift
% multiplying by 1/n (which is delta f) will result in freq. values.
f = (-N/2 : N/2-1) * (1/N);

figure;
subplot(2,1,1);
plot(f,fftshift(abs(Z)));
grid on;
title('Magnitude Spectrum of Z(\omega)');
xlabel('f');
ylabel('|Z(\omega)|');

subplot(2,1,2);
plot(f,fftshift(angle(Z)));
grid on;
title('Phase Spectrum of Z(\omega)');
xlabel('f');
ylabel('\angleZ(\omega) [rad]');

