clc;
clear all;
close all;

w = pi*12/128;% value of freq.
% proof for conjugation property
% input seq. x(n)
x = [1 2 1 1];n = 0:length(x)-1;
% DTFT of conjugation of x(n)
y1 = conj(x).*exp(-j*w*n);
m1 = -n;
% value of X(-w)
y2 = x.*exp(-j*w*m1);
% display outputs
disp('DTFT of conjugated of x(n)');disp(y2);
disp('Value of conjugated of X(-w)');disp(conj(y1));
disp('conjugation property of DTFT proved')