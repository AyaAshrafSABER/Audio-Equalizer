function Hd = IIR_ButterWorth(input,FC1,FC2)
%IIR_BUTTERWORTH Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.2 and the Signal Processing Toolbox 7.4.
% Generated on: 21-Dec-2018 12:13:30

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = input;  % Sampling Frequency
N   = 20;     % Order
if FC1 == 0
    Fc = FC2;
    h  = fdesign.lowpass('N,F3dB', N, Fc, Fs);
    Hd = design(h, 'butter');
else
    Fc1 = FC1;   % First Cutoff Frequency
    Fc2 = FC2;  % Second Cutoff Frequency
    % Construct an FDESIGN object and call its BUTTER method.
    h  = fdesign.bandpass('N,F3dB1,F3dB2', N, Fc1, Fc2, Fs);
    Hd = design(h, 'butter');
end



% [EOF]
