function Hd = FIR_Window_7(input)
%FIR_WINDOW_7 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.2 and the Signal Processing Toolbox 7.4.
% Generated on: 17-Dec-2018 16:35:45

% FIR Window Bandpass filter designed using the FIR1 function.

% All frequency values are in kHz.
Fs = input;  % Sampling Frequency

N    = 20;       % Order
Fc1  = 6;        % First Cutoff Frequency
Fc2  = 12;       % Second Cutoff Frequency
flag = 'scale';  % Sampling Flag
% Create the window vector for the design algorithm.
win = rectwin(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
