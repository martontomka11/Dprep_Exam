######################
# CREATE PIVOT TABLE #
######################

df_grouped <- read.csv("data/df_grouped.csv")

# create pivot table
df_pivot <- df_grouped %>% dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

write.csv(df_pivot, "data/df_pivot.csv")
