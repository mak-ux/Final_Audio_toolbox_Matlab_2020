
function data_r=Max_Amp(data,fs,d)
%[data, fs] = audioread('C:\Users\DELL\Desktop\somebook\my_project\audio_proj\Audio_system_toolbox\combo\All_Audiofile_Path\mak1.mp3');
data = data / abs(max(data));
%d = 0.025;
frames=Helper_For_PreEmphasis(data,fs,d);
% voiced
plot(frames(110,:));title('voiced/silence part');
figure; 
p=xcorr(frames(110,:),length(frames(110,:)) - 1);
stem(p)
figure; plot(abs(fft(frames(110,:))));
%unvoiced
figure; plot(frames(40,:));title('unvoiced/silence part');
figure;
q=xcorr(frames(40,:),length(frames(40,:)) -1);
stem(q)
figure; plot(abs(fft(frames(50,:))));
m_amp = abs(max(frames,[],2)); 
id = find(m_amp > 0.03); 
fr_ws = frames(id,:); 
data_r = reshape(fr_ws',1,[]);
plot(data_r); 
title('speech without silence');
end