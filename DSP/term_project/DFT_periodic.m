clc;
clear all;
close all;
%perodicity property of DFT
x = [1 2 1] % input seq.
N=length(x); % data index
k = 1:length(x)
n = 1:length(x)
% DFT of x(n)
X1=sum(x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N));
% DFT of x(n+N)
X2=sum(x(n).*exp(-1j.*2.*pi.*(n+N-1).*(k-1)./N));

% display outputs
disp('DFT of x(n)');disp(X1)
disp('DFT of x(n+k)');disp(X2)
disp('perodicity property of DFT verified')