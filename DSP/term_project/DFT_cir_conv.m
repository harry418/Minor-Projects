clc;
clear all;
close all;
%CIRCULAR CONVOLUTION PROPERTY OF THE DFT
x = [1 2 1 -1];% first seq.
g = [2 -1 -2 -1]; % second seq.
N = max(length(x),length(g)) % Max length of x and g
y = 0 % initialize output
n = 0:N-1 % initialize index
% circular convolution of x and g
for m = 0:N-1
    y = y + x(m+1)*g(mod(n-m,N)+1);
end
y1 = fft(y) % DFT of circular convolution
y2 = fft(x).*fft(g) % Multiplication of X(w)*G(w)
% dispay outputs
disp('DFT of Circular convolution of x(n) and g(n)')
disp(y1)
disp('Multiplication of X(k) and G(k)')
disp(y2)
disp('CIRCULAR CONVOLUTION PROPERTY OF THE DFT is verified')
