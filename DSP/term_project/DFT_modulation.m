clc;
clear all;
close all;
%MODULATION PROPERTY PROPERTY OF THE DFT 
x = [3 1 5 2 4];% input seq.
N = length(x); % N: data length
W = exp(2*pi/N*sqrt(-1));
k = [0:N-1]; % frequency index
m = 2; % shift by 2
g = W.^(m*k) .* x;
G = fft(g) % DFt of multiplication of x(n) and exp(jmk/N) 
y = fft(x); % DFT of input seq.
Y = circshift(y,2) % shift DFT of x by 2
% display outputs
disp('shifting of X(k) by 2')
disp(Y)
disp('DFT of multiplication of x(n) and exp(jmk/N)')
disp(G)
disp('MODULATION PROPERTY PROPERTY OF THE DFT is verified')