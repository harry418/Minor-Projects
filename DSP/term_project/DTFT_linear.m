clc;
clear all;
close all;
syms w % generate system variable
% first sequence
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
y1 = x1.*exp(-j*w*n1);% DTFT of first sequence

% second sequence
x2 = [1 1 -2 -2];n2 = 0:length(x2)-1
y2 = x2.*exp(-j*w*n2);% DTFT of second sequence

% proof for linear property
x3 = x1+x2;n3 = 0:length(x3)-1;
y3 = x3.*exp(-j*w*n3) % DTFT of x1+x2
disp('DTFT of x1 + DTFT of x2 = ')
disp(y1+y2)
disp('DTFT of (x1+x2) = ')
disp(y3)
disp('linear property of DTFT is verified')
