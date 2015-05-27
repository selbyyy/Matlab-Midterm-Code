function payoff = get_call_payoff( s, k )
%compute the payoff of call options
%   s - spot price(s)
%   k - strike price(s)

payoff = max(s - k,0);

