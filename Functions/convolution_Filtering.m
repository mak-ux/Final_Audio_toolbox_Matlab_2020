function Output=convolution_Filtering(Input,fs)
%[Input,fs] = audioread('sampll2.wav');
nyquist= fs/2;
%filter order
%n = 30;
n=input('Enter Filter Order (Recommonded(n=30)) : ');
% Frequency in HZ
%freq = 500; 
freq=input('Enter Working frequency (Recommonded(freq=500 Hz)) : ');
%Normalized frequency
W = freq/nyquist; 
[ h ] = fir1(n,W,'high'); 
Output = conv(Input,h);
disp('                                                                   ');
disp('Please Wait For 7 Sec After Hearing Input To Hear Output Voice : ');
sound(Input,fs);
pause(7);
sound(Output,fs)
figure
stem(Input);
xlabel('Time Axis  ');
ylabel('Amplitude Axis ');
title('Signal Graph Without filtering ');
zoom on;
figure
stem(Output);
xlabel('Time Axis  ');
ylabel('Amplitude Axis ');
title('Signal Graph With filtering ');
disp('                                                                   ');
disp('Please Zoom The Graph Window To See Proper Waveform : ');
zoom on;

end