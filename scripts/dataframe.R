# dataframe.R
df <- data.frame(id = 1:6, group = rep(c("A","B"), 3), value = c(4,7,2,9,5,3))
df$value_sq <- df$value^2
agg <- aggregate(value ~ group, data = df, FUN = mean)
print(df)
print(agg)