
function powspect=spectrum_analysis(bc,fs)
% load in birdcall (source: https://www.xeno-canto.org/403881)
%[bc,fs] = audioread('C:\Users\DELL\Desktop\somebook\my_project\audio_proj\Audio_system_toolbox\combo\All_Audiofile_Path\XC403881.mp3');

% let's hear it!
%soundsc(bc,fs)


% create a time vector based on the data sampling rate
n = length(bc);
timevec = (0:n-1)/fs;
disp('Enter  Options');
disp('Press 1. To Plot Signal And Its Power Spectrum  : ');
disp('Press 2. To Plot Time Frequency Analysis : ');
n1=input('Enter Your Option : ') ;


switch n1
    case 1
      % plot the data from the two channels
figure(1), clf
subplot(211)
plot(timevec,bsxfun(@plus,bc,[.2 0]))
xlabel('Time (sec.)')
title('Time domain')
set(gca,'ytick',[],'xlim',timevec([1 end]))

% compute the power spectrum
hz = linspace(0,fs/2,floor(n/2)+1);
bcpow = abs(fft( detrend(bc(:,1)) )/n).^2;

% now plot it
subplot(212)
plot(hz,bcpow(1:length(hz)),'linew',2)
xlabel('Frequency (Hz)')
title('Frequency domain')
set(gca,'xlim',[0 8000])

    case 2
     
[powspect,frex,time] = spectrogram(detrend(bc(:,2)),hann(1000),100,[],fs);


% show the time-frequency power plot
figure(2), clf
imagesc(time,frex,abs(powspect).^2)
axis xy
set(gca,'clim',[0 1]*2,'ylim',frex([1 dsearchn(frex,15000)]),'xlim',time([1 end]))
xlabel('Time (sec.)'), ylabel('Frequency (Hz)')
colormap hot

   
     otherwise
        disp('other value')
end


