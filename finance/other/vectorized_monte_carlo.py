xx, yy = np.meshgrid(np.linspace(-4, 5, 10), np.linspace(-4, 5, 10))

example_pairs = np.c_[xx.ravel(), yy.ravel()]


# Vectorized MC

from functools import partial


volatilities_vector, initial_stock_prices_vector = np.meshgrid(volatilities, initial_stock_prices)

initial_stock_prices_vector

pairs = np.c_[volatilities_vector.ravel(), initial_stock_prices_vector.ravel()]

monte_carlo_partial = partial(
    
    monte_carlo,            
    # S=initial_stock_price, 
    K=strike_price,
    T=time_to_maturity, 
    r=risk_free_interest_rate,
    q=dividend_rate, 
    # sigma=volatility, 
    CallPut=option_type, 
    n=time_steps_count,
    m=paths_count
        
)

v, s = np.hsplit(pairs, 2)

result = monte_carlo_partial(S=s, sigma=v)

result