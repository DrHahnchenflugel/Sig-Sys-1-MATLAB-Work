clf;
clc;
clear;

N = 100;
PulseWidth = 10;

t = 0:N-1;
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

% TIME-DOMAIN APPROACH - LINEAR CONVOLUTION
% We implement the conv() method to find z_time
z_time = conv(x,x); %Values of z_time
nz = 0:(2*N-2);

% F-DOMAIN APPROACH - FFT -> MULTIPLY -> INVERSE FFT
L = length(z_time);
X1 = fft(x, L);  %FFT
z_fd = X1 .* X1;  %MULTIPLY
z_fd_full = ifft(z_fd); %Inverse FFT
z_fd_real = real(z_fd_full); %Keep linear conv, remove imag. parts

% PLOT
figure;
%subplot(2,1,1);
stem(nz, z_time, 'filled');
hold on;
stem(nz, z_fd_real, '.');
grid on;
xlabel('n');
ylabel('z[n]');
title('z[n] by time- vs f- domain convolution');
legend('time-domain conv', 'f-domain conv');

