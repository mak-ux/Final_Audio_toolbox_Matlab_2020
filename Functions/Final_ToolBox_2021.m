clc;%I_HAVE_TRIED
clear all;
close all;
nnn=0;
poss3=3;
while nnn~=poss3
     nnn=menu('Enter Operations You Want To Perform','1: Press 1.  To Open Audio processing Of Audio Signal',...
         '2: Press 2.  To Listen Different Audio Signal',...
        '3: Exit');
    disp('                                                                  ');
    switch nnn
        case 1
userPrompt = 'Type Kanhaiya/Press OK To Use This Toolbox :';
titleBar = 'Audio ToolBox design By Kanhaiya';
defaultString = 'Kanhaiya Designed This Toolbox ';
%  = inputdlg(userPrompt, titleBar, 1, {defaultString});
nq = inputdlg(userPrompt, titleBar, 1, {defaultString});
disp('                                                                  ');
msgbox('Hope You Will Like It');
disp('*****************YOU ARE WELCOME IN KNAHAIYA TOOLBOX*********************');

%this is other field
np=0;
poss1=3;
while np~=poss1
     np=menu('Enter Operations You Want To Perform','1: Press 1. Audio processing Of Audio Signal',...
        '2: Press 2. Unused Signal Removal Of Audio Signal:',...
        '3: Exit');
    disp('                                                                  ');
    switch np
        case 1
%Under case 1
disp('                                                                  ');
disp('*****************YOU ARE WELCOME IN AUDIO PROCESSING OF SIGNALS*********************');
n=0;
poss=8;
while n~=poss

    n=menu('Enter Operations You Want To Perform','1: Press 1. Sterio Imager Of Audio Signal',...
        '2: Press 2. Mid Side Processing :',...
        '3: Press 3. Auto Panning  :','4: Press 4. Convolutional Filtering :',...
        '5: Press 5. Spectral And Rythmic Analysis Of Audio Signal  :',...
        '6: Press 6. Filtering Of Audio Signal :',...
        '7: Press 7. For Echo Generation And Analysis :',...
        '8: Exit');
    disp('                                                                  ');
    %----------------------------------------------------------------------




switch n
    case 1
        disp('*******************You Are Working With Audio Number 1**********************');
       [Inputaudio,Fs] =audioread('sample.wav');
       STEREO_IMAGER(Inputaudio,Fs);

    case 2
         disp('*******************You Are Working With Audio Number 1**********************');
       [Inputaudio,Fs] = audioread('t1.mp3');
       MIDSIDEPROCESSING(Inputaudio,Fs);

    case 3
         disp('*******************You Are Working With Audio Number 2**********************');
       [Inputaudio,Fs] = audioread('sampll.wav');
       auto_pan(Inputaudio,Fs);


    case 4
         disp('*******************You Are Working With Audio Number 3**********************');
        [Inputaudio,Fs] = audioread('sampll2.wav');
         convolution_Filtering(Inputaudio,Fs);
    case 5
         disp('*******************You Are Working With Audio Number 6**********************');
        [Inputaudio,Fs] = audioread('t1.mp3');
        spectrum_analysis(Inputaudio,Fs);


    case 6
         disp('*******************You Are Working With Audio Number 6**********************');
       [Inputaudio,Fs] = audioread('t1.mp3');
        spectrum_filtering(Inputaudio,Fs);

    case 7
         disp('*******************You Are Working With Audio Number 4**********************');
     [Inputaudio,Fs]=audioread('h.wav');
     Echo_gen(Inputaudio,Fs);
    case 8
          disp('*****************EXIT FROM AUDIO PROCESSING***************');
          disp('                                                                  ');
    otherwise
        disp('other value')
end
end
% if(n==1)
%     disp('You have Successfully Performed Sterio Imager Of Audio Signal');
%      disp('                                                                  ');
%     disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==2)
%       disp('You have Successfully Performed Mid Side Processing Of Audio Signal');
%        disp('                                                                  ');
%       disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==3)
%       disp('You have Successfully Performed Auto Panning Of Audio Signal');
%        disp('                                                                  ');
%       disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==4)
%       disp('You have Successfully Performed Convolutional Filtering  Audio Signal');
%        disp('                                                                  ');
%       disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==5)
%       disp('You have Successfully Performed Birds Call Spectral and rhythmicity analyses Of Audio Signal');
%        disp('                                                                  ');
%       disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==6)
%      disp('You have Successfully Performed Birds call Filtering Of Audio Signal');
%       disp('                                                                  ');
%      disp('Thanks For Using  ToolBox Designed By Mak');
%      elseif(n==7)
%      disp('You have Successfully Performed Echo Generation Of Audio Signal');
%       disp('                                                                  ');
%      disp('Thanks For Using  ToolBox Designed By Mak');
% elseif(n==8)
%     disp('You have Successfully Performed Audio Processing Designed By Mak');
%      disp('                                                                  ');
%      disp('Thanks For Using  ToolBox Designed By Mak');
% else
%     
%     disp('We Have Only eight Options');
%    
%     disp('Sorry Try In eight Options Only');
        case 2
            
disp('                                                                  ');
disp('*****************YOU ARE WELCOME IN SPEECH PROCESSING OF SIGNALS*********************'); 
n2=0;
poss=6;
while n2~=poss

    n2=menu('Enter Operations You Want To Perform','1: Press 1. For Zero Crossing Of Audio Signal',...
        '2: Press 2. Short Term Energy Of Audio Signal :',...
        '3: Press 3. Short Term Correletion  Of Audio Signal  :','4: Press 4. Pre Emphasis Ratio Of Audio Signal :',...
        '5: Press 5. Maximum Amplitude Method Of Audio Signal  :',...
        '6: Exit');
    disp('                                                                  ');
   


switch n2
    case 1
        disp('*******************You Are Working With Audio Number 7**********************');
       [Inputaudio,Fs] =audioread('mak1.mp3');
       d=input('Enter Frame Duration(Recommended: 0.02) : ');
       zero_crossing(Inputaudio,Fs,d);
       
    case 2
        disp('*******************You Are Working With Audio Number 7**********************');
       [Inputaudio,Fs] =audioread('mak1.mp3');
       d=input('Enter Frame Duration(Recommended: 0.02) : ');
      sort_term_energy(Inputaudio,Fs,d);
       

    case 3
        disp('*******************You Are Working With Audio Number 7**********************');
      [Inputaudio,Fs] =audioread('mak1.mp3');
       d=input('Enter Frame Duration(Recommended: 0.02) : ');
       short_term_correlations(Inputaudio,Fs,d);
       
    case 4
        disp('*******************You Are Working With Audio Number 7**********************');
       [Inputaudio,Fs] =audioread('mak1.mp3');
       d=input('Enter Frame Duration(Recommended: 0.02) : ');
      pre_empha_e_ratio(Inputaudio,Fs,d);
       
    case 5
        disp('*******************You Are Working With Audio Number 7**********************');
      [Inputaudio,Fs] =audioread('mak1.mp3');
       d=input('Enter Frame Duration(Recommended: 0.02) : ');
      Max_Amp(Inputaudio,Fs,d);
      
    case 6
          disp('*****************EXIT FROM SPEECH PROCESSING***************');
          disp('                                                                  ');
    otherwise
        disp('other value')
end
end
        case 3
            disp('EXIT ');
        otherwise
            disp('no options');
    end
end
        case 2
           Listen_Available_Audio_Sound;
       
        case 3
disp('                                                                  ');
disp('*****************THANKS FOR USING THIS TOOLBOX*********************');

disp('*****************HOPE YOU LIKE  THIS TOOLBOX*********************');
disp('YOU ARE EXIT');

Exit_GUI;
        otherwise
            disp('Please Go For Entered Options');
    end
end
%COPY_OFLOOK_AT