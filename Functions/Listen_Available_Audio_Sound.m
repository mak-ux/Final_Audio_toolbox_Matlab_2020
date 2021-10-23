
disp('                                                                  ');
disp('*****************YOU ARE WELCOME IN AUDIO PROCESSING OF SIGNALS*********************');
kk=0;
kposs=10;
while kk~=kposs

    kk=menu('Enter Sound Number To Listen Original Song ','1: Audio No 1',...
        '2: Audio No 2',...
        '3: Audio No 3','4:Audio No 4',...
        '5: Audio No 5',...
        '6: Audio No 6',...
        '7: Audio No 7',...
        '8: Audio No 8',...
        '9: Audio No 9',...
        '10: Exit');
    disp('                                                                  ');
    %----------------------------------------------------------------------

% disp('Enter Operations You Want To Perform');
% disp('Press 1. Sterio Imager Of Audio Signal : ');
% disp('Press 2. Mid Side Processing : ');
% disp('Press 3. Auto Panning  : ');
% disp('Press 4. Convolutional Filtering : ');
% disp('Press 5. Birds Call Spectral and rhythmicity analyses  : ');
% disp('Press 6. Birds call Filtering : ');
% disp('Press 7. For Echo Generation : ');
% n=input('Enter Your Options : ') ;


switch kk
    case 1
         [Inputaudio,Fs] =audioread('sample.wav');
         sound(Inputaudio,Fs);
    case 2
         [Inputaudio,Fs] =audioread('sampll.wav');
         sound(Inputaudio,Fs);
    case 3
         [Inputaudio,Fs] =audioread('sampll2.wav');
         sound(Inputaudio,Fs);
    case 4
         [Inputaudio,Fs] =audioread('h.wav');
         sound(Inputaudio,Fs);
    case 5
         [Inputaudio,Fs] =audioread('s7.wav');
         sound(Inputaudio,Fs);
    case 6
         [Inputaudio,Fs] =audioread('t1.mp3');
         sound(Inputaudio,Fs);
    case 7
         [Inputaudio,Fs] =audioread('mak1.mp3');
         sound(Inputaudio,Fs);
    case 8
         [Inputaudio,Fs] =audioread('mak2.mp3');
         sound(Inputaudio,Fs);
    case 9
         [Inputaudio,Fs] =audioread('mak3.mp3');
         sound(Inputaudio,Fs);
    case 10
        disp('You Have Heared All The Song Now Varifiy It After Performing Operations ');
end
end

         