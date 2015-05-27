function Payoff = Calculate_Range_option_payoff( ST,K_up,K_lo,Q )

for i = 1:(length(ST));
    
    if ST(i) >= K_up
        Payoff(i) = 0;
    elseif ST(i) >= K_lo
        Payoff(i) = Q;
    else
        Payoff(i) = 0;
        
    end
    
    
end

