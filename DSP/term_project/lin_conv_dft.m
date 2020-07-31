clc
clear all
close all
x1 = [1 2 1 1] % first array
x1pad = [x1 zeros(1,7-length(x1))] % zero padding of x1
y1 = fft(x1pad) %DFT of first array
x2 = [1 1 -2 -1] % second array
x2pad = [x2 zeros(1,7-length(x2))] % zero padding of x2
y2 = fft(x2pad) % DFTa of second array
% inverse DFT of multiplicatin of X1(w) and X2(w)
lin_conv = ifft(y1.*y2) 
% plotting graphs and output
subplot(411);stem(x1,'filled')
title('First Sequence')
xlabel('time');ylabel('Magnitude')
subplot(412);stem(x2,'filled')
title('Second Sequence')
xlabel('time');ylabel('Magnitude')
subplot(413)
stem(lin_conv,'filled')
title('Linear Convolution using DFT')
xlabel('time');ylabel('Magnitude')
subplot(414)
stem(conv(x1,x2),'filled')
title('Linear Convolution using conv function')
xlabel('time');ylabel('Magnitude')
% display outputs
disp('first sequence');disp(x1)
disp('second sequence');disp(x2)
disp('Linear Convolution using DFT');disp(lin_conv)
disp('Linear Convolution using conv function')
disp(conv(x1,x2))
