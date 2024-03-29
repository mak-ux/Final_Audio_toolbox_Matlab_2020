

function data_r=sort_term_energy(data,fs,f_d)


data = data / abs(max(data));


frames = Helper_For_PreEmphasis(data, fs, f_d);% it is like 0% overlap with rectangular window

% calculate frames energy
[r,c] = size(frames);
ste = 0;
for i = 1 : r
    ste(i) = sum(frames(i,:).^2);    
end

ste = ste./max(ste); %normalize the data

f_size = round(f_d * fs);
ste_wave = 0;
for j = 1 : length(ste)
    l = length(ste_wave);
    ste_wave(l : l + f_size) = ste(j);
end

% plot the STE with Signal
t = [0 : 1/fs : length(data)/fs]; % time in sec
t = t(1:end - 1);
t1 = [0 : 1/fs : length(ste_wave)/fs];
t1 = t1(1:end - 1);

plot(t,data'); hold on;
plot(t1,ste_wave,'r','LineWidth',2);
legend('Speech Signal','Short Term Energy (Frame Energy)');

% Silence Removal
id = find(ste >= 0.01);
fr_ws = frames(id,:); % frames without silence

% reconstruct signal
data_r = reshape(fr_ws',1,[]);
figure;
plot(data);hold on;
plot(data_r,'g'); title('speech without silence');
end