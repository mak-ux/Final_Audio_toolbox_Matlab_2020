function data_r=pre_empha_e_ratio(data,fs,f_d)
% read sound 
%[data, fs] = audioread('C:\Users\DELL\Desktop\somebook\my_project\audio_proj\Audio_system_toolbox\combo\All_Audiofile_Path\mak1.mp3');
% normalize data
data = data / abs(max(data));

% do framing
%f_d = 0.025;
frames = Helper_For_PreEmphasis(data, fs, f_d);% it is like 0% overlap with rectangular window

% calculating pre-emphasis energy ratio for each frame
[r,c] = size(frames);

for i = 1 : r
   temp = frames(i,:);
    sum1(i) = 0;
    for j = 2 : length(temp)
        
        sum1(i) = sum1(i) + abs(temp(j) - temp(j - 1));        
    end
    
    enr(i) = sum1(i)/sum(temp.^2); % pre-emphasized energy ratio
end

enr = enr./max(enr);

f_size = round(f_d * fs);
enr_wave = 0;
for j = 1 : length(enr)
    l = length(enr_wave);
    enr_wave(l : l + f_size) = enr(j);
end


% plot the stac with Signal
t = [0 : 1/fs : length(data)/fs]; % time in sec
t = t(1:end - 1);
t1 = [0 : 1/fs : length(enr_wave)/fs];
t1 = t1(1:end - 1);

plot(t,data'); hold on;
plot(t1,enr_wave,'r','LineWidth',2);
legend('Speech Signal','Pre-Emph. Energy Ratio');

% Silence Removal
id = find(enr <= 0.008);
fr_ws = frames(id,:); % frames without silence

% reconstruct signal
data_r = reshape(fr_ws',1,[]);
figure;
plot(data);hold on;
plot(data_r,'g'); title('speech without silence');
end