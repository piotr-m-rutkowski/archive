# 0/1 Knapsack — bottom-up tabulation.

#%% Setup
source("R/dp_utils.R")

weights <- c(2, 3, 4, 5)
values  <- c(3, 4, 5, 6)
capacity <- 5

#%% Tabulation
knapsack <- function(weights, values, capacity) {
  n <- length(weights)
  # dp[i, w] = best value using first i items with capacity w
  dp <- matrix(0, nrow = n + 1, ncol = capacity + 1)

  for (i in 1:n) {
    for (w in 0:capacity) {
      if (weights[i] <= w) {
        dp[i + 1, w + 1] <- max(
          dp[i, w + 1],                                # exclude item i
          dp[i, w - weights[i] + 1] + values[i]         # include item i
        )
      } else {
        dp[i + 1, w + 1] <- dp[i, w + 1]
      }
    }
  }
  dp[n + 1, capacity + 1]
}

#%% Run
result <- knapsack(weights, values, capacity)
print(result)  # expect 7 (items with weight 2+3, value 3+4)

#%% Check
stopifnot(result == 7)
cat("OK\n")
