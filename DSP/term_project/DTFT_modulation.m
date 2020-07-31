clc
clear all
% modulation property of DTFT
w = 2*pi/10;
w0 = 3;
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
y1 = sum(x1.*cos(w0*n1).*exp(-j*w*n1));
w2 = w-w0
y2 = sum(x1.*exp(-j*w2*n1));
w3 = w+w0
y3 = sum(x1.*exp(-j*w3*n1));
y4 = (y2 + y3)/2
disp(' value of DTFT of x(n)*cos(w0n)')
disp(y1)
disp('value of X(w-w0)/2 + X(w+w0)/2')
disp(y4)
disp('modulation property of DTFT verified')
