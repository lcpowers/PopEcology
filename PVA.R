# Install and load Bruce GitHub Package
devtools::install_github("brucekendall/PVA")
library(PVA)

# Function 'estimate_SEG_params' Description
help("estimate_SEG_params")

# Grevy's zebra in Marsabit
Nest <- c(4922, 4437, 2838, 2055, 2232, 691, 678, 1561, 1969)
Year <- c(1977, 1978, 1981, 1987, 1990, 1991, 1992, 1993, 1994)

# Estimate mu and sigma2 with the new function
estimates <- estimate_SEG_params(Nt = Nest, Yeart = Year)


# Regular way
r_t <- diff(log(grizzly$N)) # Calculate annual growth rates
mean(r_t) # Estimate of mu
var(r_t)  # Estimate of sigma2

# New way
estimate_SEG_params(grizzly$N) # If year is unspecified it's assumed to be continuous
