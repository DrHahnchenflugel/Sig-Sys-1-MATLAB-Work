% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Load data for problem
load ELE532_Lab1_Data.mat;

% Anonymous function to determine number of zeros in an array
numZeros = @(A) sum(A(:) == 0);

% Copy sound file
audio = x_audio;

% Set threshold
threshold = 0.025;

% Compress audio file
audio(abs(audio) < threshold) = 0;

% Original audio file
sound(x_audio, 8000);
numZeros(x_audio)

% Pause to allow original to run
pause(3)

% Compressed audio file
sound(audio, 8000)
numZeros(audio)