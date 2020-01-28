# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!a
grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- grants[, "organization"]

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_grant <- mean(grants$total_amount)
print(mean_grant)
# What was the dollar amount of the largest grant?
max_amount <- max(grants$total_amount)
print(max_amount)
# What was the dollar amount of the smallest grant?
min_amount <- min(grants$total_amount)
print(min_amount)
# Which organization received the largest grant?
max_organization<- grants[grants$total_amount == max_amount, "organization" ]
print(max_organization)

# Which organization received the smallest grant?
min_organization<- grants[grants$total_amount == min_amount, c("organization", "total_amount")]
print(min_organization)
# How many grants were awarded in 2010?
award <- nrow(grants[grants$start_year == "2010", ])
print(award)
xx <- sum(grants[grants$start_year == "2010", "total_amount"])
print(xx)

