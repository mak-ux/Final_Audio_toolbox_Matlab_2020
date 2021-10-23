%use single channel audio
function Outputaudio=auto_pan(inputaudio,fs)
%[inputaudio,fs] = audioread('sampll.wav');
n = length(inputaudio); 
ts = 1/fs;
t1 = [0:n-1]*ts; 
t1 = t1(:);
f = 1; 
panvalue = 100*sin(2*pi*f*t1);
disp('Enter Pan Type');
disp('Press 1. For Linear Panning : ');
disp('Press 2. For Square Root Panning : ');
disp('Press 3. For Sine-Law Panning : ');
n=input('Enter Your Option : ') ;


switch n
    case 1
       pantype = n; 
    case 2
        pantype = n; 
    case 3
        pantype = n; 
     otherwise
        disp('other value')
end

   
[Outputaudio] =Helper_For_Panning(inputaudio,panvalue,pantype);
%I have given sampling rate manually but you can try of different sampling
%rate
sound(inputaudio,fs);
pause(7)
sound(Outputaudio,44100);
figure
plot(t1,inputaudio);
xlabel('Time Axis  ');
ylabel('Amplitude Axis ');
title('Signal Graph Without Panning ');
zoom on;
figure
plot(t1,Outputaudio);
xlabel('Time Axis ');
ylabel('Amplitude Axis ');
title('Signal Graph With Panning ');
zoom on;
end