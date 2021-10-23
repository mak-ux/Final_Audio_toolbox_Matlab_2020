
%use two channel audio
function Outputaudio=MIDSIDEPROCESSING(Inputaudio,Fs)
%[Inputaudio,Fs] = audioread('t1.mp3');

left = Inputaudio(:,1);
right = Inputaudio(:,2);

mid = 0.5 * (left + right);
sides = 0.5 * (left - right);
newL = mid + sides;
newR = mid - sides;
Outputaudio = [newL , newR];
 sound(Inputaudio,Fs);
 pause(5);
sound(Outputaudio,Fs);
figure
plot(Inputaudio);
xlabel('Time Axis  ');
ylabel('Amplitude Axis ');
title('Original Signal Graph  ');
zoom on;
figure
plot(Outputaudio);
xlabel('Time Axis ');
ylabel('Amplitude Axis ');
title('Signal Graph With Mid/Side Processing ');
zoom on;
figure
p1=fft(Inputaudio);
p=abs(p1);
subplot(2,2,1);
stem(p/max(p))
xlabel('frequency Axis ');
ylabel('Amplitude Axis ');
title('Signal Graph With Mid/Side Processing ');
zoom on;
q1=fft(Outputaudio);
q=abs(q1);
subplot(2,2,2);
stem(q/max(q))
xlabel('frequency Axis ');
ylabel('Amplitude Axis ');
title('Signal Graph With Mid/Side Processing ');
zoom on;
end
