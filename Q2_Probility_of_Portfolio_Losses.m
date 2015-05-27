% QFA
% Topic 3: Monte Carlo & Options Pricing
% updated on 04/02/2015
%STU: 15/15 points.

clc; clear;

s0 = 42;  % stock price at time zero
u = 0.1;  % risk free interest rate, per annum
vol = 0.2; % volatility
T = 1;  % maturity in years

drift = (u-vol*vol/2)*T;
diffusion = vol*sqrt(T);

power = 1:6;
N = 10.^power;

probability = zeros(length(N),1);
SEM = zeros( length(N),1);

% show convergency
for i = 1 : length(N)
    
    current_N = N(i);
    sT = s0*exp( drift + diffusion*randn(current_N,1) );
    I = sT/s0 < 0.9;
    probability(i) = mean( I );
    
    SEM(i) = std(sT)/ sqrt( current_N );
    
end

format bank;
disp('    Nr of Paths     probability(%)    SEM');
disp([N', probability*100, SEM]);





