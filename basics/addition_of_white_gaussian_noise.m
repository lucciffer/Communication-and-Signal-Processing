rootdirectory = 'write file path here';
[y,Fs] = audioread(fullfile(rootdirectory,'sampfile.wav'));%Given sample rate,Fs=8000
% code to resample audio
subplot (5,1,1)
plot(y)
xlabel ('audio signal sample rate=8000') 
soundsc(y,Fs)

pause(35);
%adding white gaussian noise to input audio sample
%y_wgn = awgnchan(y)
y_noise = y + 0.1*randn(size(y));
subplot(5,1,2)
plot(y_noise)
xlabel('audio signal with white gaussian noise added')
soundsc(y_noise,Fs)