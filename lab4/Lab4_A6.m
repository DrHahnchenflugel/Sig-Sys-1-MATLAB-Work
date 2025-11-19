clf;
clc;
clear;

N = 100;
PulseWidth = 10;
t = (0:1:(N-1));
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);

Xf = fft(x);

omega0 = pi/3;


w_plus = x .* exp(1i * omega0 * t); % '1i' is the imaginary unit 'j'
Wf_plus = fft(w_plus);

w_minus = x .* exp(-1i * omega0 * t);
Wf_minus = fft(w_minus);

w_c = x .* cos(omega0 * t);
Wf_c = fft(w_c);

figure;

subplot(4,1,1);
plot(f, fftshift(abs(Xf))); grid on;
title('Original Pulse: |X(\omega)| (Centered at 0)'); ylabel('Original');

subplot(4,1,2);
plot(f, fftshift(abs(Wf_plus))); grid on;
title('w_+(t): |W_+(\omega)| (Shifted Left by \pi/3)'); ylabel('w+');

subplot(4,1,3);
plot(f, fftshift(abs(Wf_minus))); grid on;
title('w_-(t): |W_-(\omega)| (Shifted Right by \pi/3)'); ylabel('w-');

subplot(4,1,4);
plot(f, fftshift(abs(Wf_c))); grid on;
title('w_c(t): |W_c(\omega)| (Both Shifts, Cosine Modulation)');
xlabel('Frequency f [Hz]'); ylabel('wc');