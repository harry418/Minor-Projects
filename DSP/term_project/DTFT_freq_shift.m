clc
clear all
% frequency shifting property of DTFT
w = 2*pi/10; % value of freq.
w0 = 3;% w0=3 shift in freq.
% input seq.
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
% multiplication of DTFT of x1 and exp(jw0n)
y1 = x1.*exp(j*w0*n1).*exp(-j*w*n1);
w2 = w-w0 % shift in freq.
% DTFT of x1(w-w0)
y2 = x1.*exp(-j*w2*n1);
% display output
disp(' value of DTFT of x(n)*exp(jwn)')
disp(y1)
disp('value of X(w-w0)')
disp(y2)
disp('ƒrequency shifting property verified')
