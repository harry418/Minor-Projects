clc
clear all
% Differentiation in freq. domain property of DTFT
syms w % generate system variable
% input seq. and DTFT of input seq.
x1 = [1 2 1 1];n1 = 0:length(x1)-1;
y2 = x1.*exp(-j*w*n1);
% value of n1* (DTFT of x1(n))
y1 = n1.*x1.*exp(-j*w*n1);
% differentiation of DTFT of x1(n)
y3 = j*diff(y2)
% dispay outputs
disp('value of DTFT of x(n)*n')
disp(y1)
disp('value of j*dX(w)/dw')
disp(y3)
disp('Differentiation in freq. domain property verified')
