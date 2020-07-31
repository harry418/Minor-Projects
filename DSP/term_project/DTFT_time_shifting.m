clc;
clear all;
close all;
%syms w
w = pi*12/128 % value of freq. w

% proof for time shifting property
% input sequence
x = [1 2 1 1];n = 0:length(x)-1; % index value
% DTFT of input (x * exp(jwk))
ya = x.*exp(-j*w*n)*exp(j*w*3);
m = n-3; % time shift with k = 3
yb = x.*exp(-j*w*m); % DTFT of x shifted by 3
% display outputs
disp('DTFT of x multiplied with exp(-jwk), k =3 ');disp(ya);
disp('DTFT of x shifted with k = 3');disp(yb);
disp('time shifting property is verified')
