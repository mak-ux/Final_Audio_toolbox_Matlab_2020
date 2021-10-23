function echo=Echo_gen(voice,fs)
%voice=audioread('All_Audiofile_Path\h.wav');
%fs=44100;
subplot(2,1,1);
plot(voice);
xlabel('time axis');
ylabel('amplitude');
title('original sound waveform');
mono=(voice(:,1)+voice(:,2))/2;
size(mono)
h1=[0.5 zeros(1,14000)];
h2=[0.4 zeros(1,14000)];
h3=[0.3 zeros(1,14000)];
h4=[0.2 zeros(1,14000)];
h=[h1 h2];
nh=[h h3];
hf=[nh h4];
echo=conv(mono,hf);
sound(echo,fs);
subplot(2,1,2)
plot(echo)
xlabel('time axis');
ylabel('amplitude');
title('echo sound waveform');
end
