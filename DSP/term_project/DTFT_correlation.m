clc
clear all
% correlation property of DTFT
w = 2*pi/10; % value offreq.
% first seq. and DTFT of x1(n)
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
y1 = sum(x1.*exp(-j*w*n1));
% second seq. and DTFT of x2(-n)
x2 = [1 1 -2 -2];n2 = 0:length(x2)-1;
y2 = sum(x2.*exp(-j*-w*n2));
% correlation of x1 and x2
x3 = xcorr(x1,x2);n3 = 0:length(x3)-1;
% DTFT of correlation of x1 and x2
y3 = sum(x3.*exp(-j*w*n3))
y4 = y1.*y2 % X1(w)*X2(-w)
% display output
disp('DTFT of correlation of x1 and x2')
disp(abs(y4))
disp('multiplication of x1(w) and X2(-w)')
disp(abs(y3))
disp('corelation property is verified')