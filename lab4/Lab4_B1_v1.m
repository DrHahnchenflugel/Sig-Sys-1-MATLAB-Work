clf;
clc;
clear;
load('Lab4_Data.mat');
%sound(xspeech,32000);
subplot(4,1,1);
MagSpect(hLPF2000);
grid on;
title('Magnitude Spectrum of hLPF2000');
subplot(4,1,2);
MagSpect(hLPF2500);
grid on;
title('Magnitude Spectrum of hLPF2500');
subplot(4,1,3);
MagSpect(hChannel);
grid on;
title('Magnitude Spectrum of hChannel');
subplot(4,1,4);
MagSpect(xspeech);
grid on;
title('Magnitude Spectrum of xspeech');

% xspeech has a range from roughly 0-3.5k that's information we'd want to keep.
% we're passing it through a bandpass channel that has values of 2k-6k
% if we low pass through 2k and modulate with a basis of 4k, we end up with
% 4k +/- 2k, which is a range of 2k .. 6k Hz, which perfectly fits the channel.

% ENCODER
Fs = 32000;
N = length(xspeech);

% 1 - LPF
x_LPF = filter(hLPF2000, 1, xspeech);

% 2 - Basis of 4khz
basis = osc(4000,N);

% 3 - Modulate signal
x_tx = x_LPF .* basis;

% 4 - Transmit through bandpass filter channel
data = filter(hChannel, 1, x_tx);

% DECODER
% 1 - demodulate by multiplying by same basis (trig identity cos^2 has a
% A/2 cos(2pi f_mod t) term in it, i.e., original signal * 1/2.
demod = data .* basis; %y(n) * cos(2pi * f_0 * n / F_s)

% 2 - LPF (get rid of high freq garbage centered at 2f_basis)
decoded = filter(hLPF2000, 1, demod);

% 3 - Correct for gain (cos^2 = 0.5, so multiply by 2 for original magnitude)
decoded_gain_corrected = decoded * 2;

sound(xspeech, Fs);
sound(decoded_gain_corrected, Fs);
