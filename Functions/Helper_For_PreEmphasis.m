function [frame] =Helper_For_PreEmphasis(input,fs,d)
framesize=round(d*fs);
l=length(input);
N=floor(l/framesize);
p=0;
for i=1:N
    frame(i,:)=input(p+1:p+framesize);
     p=p+framesize;
end
end
