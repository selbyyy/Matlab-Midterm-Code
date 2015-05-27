%STU: 10/10 points. 
clc; clear;

s0 = 20:50;  
k_itm = 30; 
k_atm = 35;
k_otm = 40;

Payoff = get_long_ladder_payoff(s0,k_itm, k_atm, k_otm);

disp('The payoff is')
disp(Payoff')

plot (s0,Payoff)