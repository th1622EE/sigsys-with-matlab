%%
% Exampole 0.4d --Creating a WAV file from scratch and reading it back 
%%
clear all
Fs=5000; 											% sampling rate 
t=0:1/Fs: 5;   										% time parameter 
y=0.1*cos(2*pi*2000*t)-0.8*cos(2*pi*2000*t.^2);		% sinusoid and chirp signal
%% writing chirp.wav file
audiowrite('chirp.wav',y, Fs)
%% reading chirp.wav back into MATLAB as y1 and listening to it
[y1, Fs] = audioread('chirp.wav');
sound(y1, Fs) 										% sound generated by y1
figure(4)
plot(t(1:1000), y1(1:1000))