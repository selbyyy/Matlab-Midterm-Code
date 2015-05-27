function payoff = get_long_ladder_payoff(stock_price,k_itm, k_atm, k_otm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% payoff = get_straddle_payoff(s,k)
% 
%
% This function calculates the payoff for a straddle.
% For each element in the vector, the payoff is calculated
% as: 
%     k - s if s<=k, where s is stock_price and k is strike_price
%     s - k if s>k
%
% Inputs:
%   stock_price: n-element vector of current price of the stock 
%                  in USD
%   strike_price: the straddle put/call strike price in USD
%
% Outputs:
%   payoff: the payoff given s and k
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%alternative solution:
% payoff= zeros(size(stock_price));
% % need to looop through the vector of stock prices; an 'if' statement 
% % with a vector and a scalar only returns 'true' if every element
% % of the vector satisfies the criteria
% for my_index = 1:length(stock_price)
%     current_stock_price = stock_price(my_index);
%     if (current_stock_price > strike_price)
%         payoff(my_index) = current_stock_price - strike_price;
%     else
%         payoff(my_index) = strike_price - current_stock_price;
%     end
% end


%this is the most efficient way computationally and in terms of lines
% of code. These three lines of code are functionally equivalent to lines 
% 22 through 33 above:
% put_payoff = get_put_payoff(stock_price,strike_price);
call_payoff_itm = get_call_payoff(stock_price,k_itm);
call_payoff_atm = get_call_payoff(stock_price,k_atm);
call_payoff_otm = get_call_payoff(stock_price,k_otm);
payoff = -call_payoff_atm + call_payoff_itm - call_payoff_otm;