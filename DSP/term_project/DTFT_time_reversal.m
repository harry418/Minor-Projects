clc;
clear all;
close all;

w = pi*12/128; % assign value of freq.
% proof for time reversal property
% input sequence
x = [1 2 1 1];n = 0:length(x)-1;
% value of X(-w)
y1 = x.*exp(-j*-w*n);
y2 = x.*exp(-j*w*-n);% DTFT of x(-n)
% dispay outputs
disp('DTFT of x(-n)');disp(y2);
disp('Value of X(-w)');disp(y1);
disp('time reversal property verified')