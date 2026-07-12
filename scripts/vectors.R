# vectors.R
# cat converts its arguments to character strings, concatenates them, separating them by the given sep= string, and then prints them

x <- 1:10
y <- x^2 - 3*x + 2
cat("x:", x, "\n")
cat("y:", y, "\n")
cat("Mean of y:", mean(y), "Sum of y:", sum(y), "\n")