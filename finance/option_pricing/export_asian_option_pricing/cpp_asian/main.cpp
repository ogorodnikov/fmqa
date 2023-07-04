#include <iostream>
#include <time.h>
#include <random>
#include <chrono>

#include "payoff.h"
#include "asian.h"
#include "path_generate.h"

int main(int argc, char **argv) {
  // First we create the parameter list
  // Note that you could easily modify this code to input the parameters
  // either from the command line or via a file
  unsigned num_sims = 100000;   // Number of simulated asset paths
  unsigned num_intervals = 250;  // Number of intervals for the asset path to be sampled 
  double S = 30.0;  // Option price
  double K = 29.0;  // Strike price
  double r = 0.08;   // Risk-free rate (5%)
  double v = 0.3;    // Volatility of the underlying (20%)
  double T = 1.00;    // One year until expiry

  // Overwrite parameters with input arguments
  if (argc > 1) {
    S = atof(argv[1]);
    K = atof(argv[2]);
    r = atof(argv[3]);
    v = atof(argv[4]);
    num_sims = atof(argv[5]);
  }

  // # Mersenne Twister

  // std::random_device dev;
  // std::mt19937 rng(dev());
  // std::uniform_int_distribution<std::mt19937::result_type> dist6(0, RAND_MAX - 1);

  // double seed = dist6(rng);

  // Nanosecond random seed

  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  srand((time_t)ts.tv_nsec);

  std::vector<double> spot_prices(num_intervals, S);  // The vector of spot prices

  // Create the PayOff objects
  PayOff* pay_off_call = new PayOffCall(K);

  // Create the AsianOption objects
  AsianOptionArithmetic asian(pay_off_call);

  // Update the spot price vector with correct 
  // spot price paths at constant intervals
  double payoff_sum = 0.0;
  for (int i=0; i < num_sims; i++) {
    calc_path_spot_prices(spot_prices, r, v, T);
    payoff_sum += asian.pay_off_price(spot_prices);
  }
  double discount_payoff_avg = (payoff_sum / static_cast<double>(num_sims)) * exp(-r*T);

  delete pay_off_call;

  // Finally we output the parameters and prices
  std::cout << "Number of Paths: " << num_sims << std::endl;
  std::cout << "Number of Ints:  " << num_intervals << std::endl;
  std::cout << "Underlying:      " << S << std::endl;
  std::cout << "Strike:          " << K << std::endl;
  std::cout << "Risk-Free Rate:  " << r << std::endl;
  std::cout << "Volatility:      " << v << std::endl;
  std::cout << "Maturity:        " << T << std::endl;

  // // std::cout << "Asian Price:     " << discount_payoff_avg << std::endl;
  printf("Asian Price:     %.5f\n", discount_payoff_avg);

  for(int i = 1; i < argc; i++)
  {
    std::cout << "argc[" << i << "]:         " << argv[i] << std::endl;
  }


  return 0;
}
