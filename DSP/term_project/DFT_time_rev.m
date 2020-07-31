clc;
clear all;
close all;
%TIME-REVERSAL PROPERTY OF THE DFT
x = [3 6 2 4 7];% input seq.
N = length(x);n = 0:N-1; % initialize index
X = fft(x); % DFT of x
y_a = X(mod(-n,N)+1); % time reverse of X(k)
y = x(mod(-n,N)+1);% time reverse of x
Y = fft(y); % DFT of x(-n)
% display outputs
disp('DFT of x(-n)');disp(Y)
disp('value of X(-k)');disp(y_a)
disp('TIME-REVERSAL PROPERTY OF THE DFT is verified')