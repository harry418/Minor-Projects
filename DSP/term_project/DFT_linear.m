clc;
clear all;
close all;
%Linear property of DFT
x1 = [1 2 1 1];% first seq.
x2 = [-2 1 -2 3]% second seq.
y1 = fft(x1)% DFT of x1
y2 = fft(x2)% DFT of x2
y3 = fft(x1+x2) % DFT of( x1+x2)
y4 = y1+y2 % DFT of x1 + DFT of X2
% display results
disp('DFT of x1 + DFT of X2')
disp(y4)
disp('DFT of (x1+x2)')
disp(y3)
disp('Linear property of DFT verified')