clc;
clear all;
close all;
%CIRCULAR SHIFT PROPERTY OF THE DFT 
x = [3 1 5 2 4]; % input seq.
N = length(x); % N: data length
W = exp(2*pi/N*sqrt(-1));
Y = fft(circshift(x,2)); % dft of circular shift of x
k = [0:N-1]; % frequency index
m = 2; % shift
G = W.^(-m*k) .* fft(x);
disp('DFT of x(n) shifted by 2')
disp(Y)
disp('multiplication of DFT of X(k) and exp(-jmk/N)')
disp(G)
disp('CIRCULAR SHIFT PROPERTY OF THE DFT is verified')