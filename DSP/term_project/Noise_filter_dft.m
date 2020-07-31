clc;
clear all;
close all;

% number of signal measurements
n = 1000;
% measuring from 0 to 2 pi
length = 2*pi;
% difference between two measurements
h = length/n;
% steps
t = (0:h:length-h);
% Signal
S = sin(2*t)+cos(7*t)-cos(t);

% random noise
RN = randn(n,1);
% adding the random noise to the signal
NS = transpose(RN) + S;

% getting the complex fourier coefficients using fft
ck = fft(NS);

% dividing the complex fourier coefficients by n 
ck = ck/n;

% setting any complex fourier coefficients smaller than 0.9 times the
% max to zero to remove the noise
m = max(ck);
for i = 1:n
  if ck(i) < 0.9*m
    ck(i) = 0;
  end
end


% getting the fourier coefficients ak and bk
s = floor(n/2)+1;
for i = 1:s
  ak(i) = 2 * real(ck(i));
  bk(i) = -2 * imag(ck(i));
end

% applying the fourier series in sin cos form
for i = 1:n
  y(i) = ak(1)/2;
  for j = 2:s
    y(i) =y(i)+ak(j) * cos((j-1)*i*h) + bk(j) * sin((j-1)*i*h);
  end
end
%ploting and display all signals
% display input signal
plot(t,S);
title('Analytical Signal')
xlabel('time');ylabel('Magnitude')
% display noisy signal
plot(t,NS);
title('Noisy Signal')
xlabel('time');ylabel('Magnitude')
plot(t,y);
title('Generated signal')
xlabel('time');ylabel('Magnitude')
plot(t,S,t,NS,t,y);
title('All Signals Combined Representation')
xlabel('time');ylabel('Magnitude')
legend('Analytical Signal','Noisy Signal','Generated signal')