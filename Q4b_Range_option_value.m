clc; clear;
%STU: 15/15 points. 

s0 = 20:60;  % stock price at time zero
r = 0.1;  % risk free interest rate, per annum
vol = 0.2; % volatility
T = 0.5;  % maturity in years

K_up = 45;
K_lo = 39;

Q = 10;

d2_up = (log(s0/K_up) + (r-vol*vol/2)*T)  /  (vol*sqrt(T));
d2_lo = (log(s0/K_lo) + (r-vol*vol/2)*T)  /  (vol*sqrt(T));

Value = Q* exp(-r*T) * (normcdf(d2_lo)-normcdf(d2_up));

disp('The value of the range option is')
disp(Value')
plot(s0,Value)