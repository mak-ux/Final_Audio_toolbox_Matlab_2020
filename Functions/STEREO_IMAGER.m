
function out=STEREO_IMAGER(in,Fs)
%[in,Fs] =audioread('sample.wav');
% Splitting signal into right and left channels
L = in(:,1);
R = in(:,2);
% Create mid and side channels
side = 0.5 * (L-R);
mid = 0.5 * (L+R);
% Width amount (wider if > 1, narrower if < 1)
width = 5;
% Scale the mid/side with width
sideNew = width .* side;
midNew = (2 - width) .* mid;
% Create new M/S signal
newLeft = midNew + sideNew;
newRight = midNew - sideNew;
% Combine signals, concatenated side–by–side, 2 columns
out = [newLeft , newRight];
% Play the sound
sound(out,Fs)
end