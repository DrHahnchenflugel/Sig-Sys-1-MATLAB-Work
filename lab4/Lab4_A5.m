clf;
clc;
clear;

N = 100;
f = (-(N/2):1:(N/2)-1)*(1/N);
PulseWidth = 10;
x10 = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
Xf10 = fft(x10);

PulseWidth = 5;
x5 = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
Xf5 = fft(x5);

PulseWidth = 25;
x25 = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
Xf25 = fft(x25);

figure;
subplot(3,1,1);
plot(f, fftshift(abs(Xf10))); grid on;
title('T=10: Magnitude Spectrum'); ylabel('|X(\omega)|');

subplot(3,1,2);
plot(f, fftshift(abs(Xf5))); grid on;
title('T=5: Magnitude Spectrum (Wider Spectrum)'); ylabel('|X(\omega)|');

subplot(3,1,3);
plot(f, fftshift(abs(Xf25))); grid on;
title('T=25: Magnitude Spectrum (Narrower Spectrum)');
xlabel('Frequency f [Hz]'); ylabel('|X(\omega)|');

figure;
subplot(3,1,1);
plot(f, fftshift(angle(Xf10))); grid on;
title('T=10: Phase Spectrum'); ylabel('\angle X(\omega)');

subplot(3,1,2);
plot(f, fftshift(angle(Xf5))); grid on;
title('T=5: Phase Spectrum'); ylabel('\angle X(\omega)');

subplot(3,1,3);
plot(f, fftshift(angle(Xf25))); grid on;
title('T=25: Phase Spectrum');
xlabel('Frequency f [Hz]'); ylabel('\angle X(\omega)');
