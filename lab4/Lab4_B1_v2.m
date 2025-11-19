clf;
clc;
clear;
load('Lab4_Data.mat');

% --- Configuration and Setup ---
Fs = 32000;
N = length(xspeech);
Fc = 4000; % Carrier frequency chosen to center the LPF signal in the channel

% --- I. Signal and Filter Analysis (Plotting) ---
% Displays the Magnitude Spectrum of the components
subplot(4,1,1);
MagSpect(hLPF2000);
grid on;
title('Magnitude Spectrum of hLPF2000 (Passband 0-2 kHz)');

subplot(4,1,2);
MagSpect(hLPF2500);
grid on;
title('Magnitude Spectrum of hLPF2500');

subplot(4,1,3);
MagSpect(hChannel);
grid on;
title('Magnitude Spectrum of hChannel (Passband 2-6 kHz)');

subplot(4,1,4);
MagSpect(xspeech);
grid on;
title('Magnitude Spectrum of xspeech (Energy up to 3.5 kHz)');

% --- II. ENCODER (Signal Preparation and Transmission) ---

% 1. LPF the speech signal to 2 kHz bandwidth
x_LPF = filter(hLPF2000, 1, xspeech);

% 2. Generate the 4 kHz carrier signal
basis = osc(Fc, N);

% 3. Modulate the LPF signal (shifts spectrum from 0-2kHz to 4 +/- 2 kHz)
x_tx = x_LPF .* basis;

% 4. Transmit through the channel filter
data = filter(hChannel, 1, x_tx);

% --- III. DECODER (Signal Recovery) ---

% 1. Demodulate the received signal (shifts spectrum back, creating baseband and 2*Fc components)
demod = data .* basis;

% 2. LPF to recover the baseband signal and remove the high-frequency component (at 8 kHz)
decoded = filter(hLPF2000, 1, demod);

% 3. Correct the gain lost during demodulation (multiplication by 2)
decoded_gain_corrected = decoded * 2;

% --- IV. Verification ---
% Listen to the original and recovered signals
disp('Playing original speech...');
sound(xspeech, Fs);

% Introduce a pause so the user can distinguish the two sounds
pause(ceil(N/Fs) + 0.5); 

disp('Playing decoded speech...');
sound(decoded_gain_corrected, Fs);