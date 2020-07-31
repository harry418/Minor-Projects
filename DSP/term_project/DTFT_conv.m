clc;
clear all;
close all;

w = pi*12/128 % value of freq.
% proof for convolution property
% first sequence and DTFT of first sequence
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
y1 = sum(x1.*exp(-j*w*n1));
% second sequence and DTFT of second sequence
x2 = [1 1 -2 -2];n2 = 0:length(x2)-1;
y2 = sum(x2.*exp(-j*w*n2));
% linear convolution of sequences
x_3 = conv(x1,x2);n_3 = 0:length(x_3)-1;
% DTFT of convolution
y_3 = sum(x_3.*exp(-j*w*n_3));
y_4 = y1*y2 % multiplication of DTFT of both seq.
% display outputs
disp('DTFT of convoltuion x1 and x2');disp(y_3)
disp('Multiply of DTFT of x1 and DTFT of x2');disp(y_4)
disp('convolution property of DTFT verified')