clc;
clear all;
close all;
x = [1 2 4 -1 3 0 -2] ;%  input array
x_inp = x % copy input array
p=nextpow2(length(x)); % checking the size of the input array
x=[x zeros(1,(2^p)-length(x))];% complementing an array of zeros if necessary
N=length(x); % computing the array size
S=log2(N); % computing the number of conversion stages
Half=1;  % Seting the initial "Half" value
x=bitrevorder(x); % Placing the data samples in bit-reversed order
for stage=1:S;  % stages of transformation
    for index=0:(2^stage):(N-1);  % series of "butterflies" for each stage
        for n=0:(Half-1);  % creating "butterfly" and saving the results
            pos=n+index+1;  % index of the data sample
            pow=(2^(S-stage))*n; % part of power of the complex multiplier
            w=exp((-1i)*(2*pi)*pow/N);  % complex multiplier
            a=x(pos)+x(pos+Half).*w;  % 1-st part of the "butterfly" creating operation
            b=x(pos)-x(pos+Half).*w;  % 2-nd part of the "butterfly" creating operation
            x(pos)=a;    % saving computation of the 1-st part
            x(pos+Half)=b; % saving computation of the 2-nd part
        end;
    end;
Half=2*Half; % computing the next "Half" value
end;
y=x;  % returning the result from function
% display output
disp('input array');disp(x_inp)
disp('Result of Radix 2 Decimation in Time');disp(y)
subplot(211);stem(x_inp,'filled'),title('Input sequence')
xlabel('time');ylabel('Magnitude')
subplot(212);stem(y,'filled'),
title('Result of Radix 2 Decimation in Time')
xlabel('time');ylabel('Magnitude')