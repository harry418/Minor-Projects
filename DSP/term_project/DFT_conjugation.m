clc;
clear all;
close all;
%COMPLEX CONJUGATION PROPERTY OF THE DFT
x = [3 6 2 4 7]; % input seq.
N = length(x); % length
n = 0:N-1; % initialize index
X = fft(x(mod(-n,N)+1)) % DFT f x(-n)
G = conj(x) % conjugate of x
g = fft(G); % DFT of conjugation of x
% display outputs
disp('DFT of conjugate of x(n)');disp(g)
disp('value of conjugate of X(k)');disp(conj(X))
disp('COMPLEX CONJUGATION PROPERTY OF THE DFT is verified')