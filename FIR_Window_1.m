function Hd = FIR_Window_1(input)
%FIR_WINDOW_1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.2 and the Signal Processing Toolbox 7.4.
% Generated on: 17-Dec-2018 15:04:35

% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = input;  % Sampling Frequency

N    = 20;       % Order
Fc   = 170;      % Cutoff Frequency
flag = 'scale';  % Sampling Flag

% Create the window vector for the design algorithm.
win = rectwin(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
