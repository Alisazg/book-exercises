# Exercise 2: working with data frames

# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100")
# Hint: use the `paste()` function and vector recycling to add a number to the word
# "Employee"
employees <- paste("employees", 1:100)
print(employees)
# Create a vector of 100 random salaries for the year 2017
# Use the `runif()` function to pick random numbers between 40000 and 50000
salary_2017<-runif(100,40000,50000)
print(salary_2017)
# Create a vector of 100 annual salary adjustments between -5000 and 10000.
# (A negative number represents a salary decrease due to corporate greed)
# Again use the `runif()` function to pick 100 random numbers in that range.
adjustment<- runif(100,-5000,10000)

# Create a data frame `salaries` by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries<-data.frame(employees,salary_2017,adjustment)
print(salaries)
# Add a column to the `salaries` data frame that represents each person's
# salary in 2018 (e.g., with the salary adjustment added in).
salary_2018<-salary_2017+adjustment
salaries<-data.frame(salaries,salary_2018)
print(salaries)
# Add a column to the `salaries` data frame that has a value of `TRUE` if the 
# person got a raise (their salary went up)
salaries$raise<-salaries$adjustment>0
print(salaries)

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2018 salary of Employee 57
salaries[57,"salary_2018"]
print(salaries[salaries$employees=="employees 57","salary_2018"])
# How many employees got a raise?

nrow(salaries[salaries$raise==TRUE,])

# What was the dollar value of the highest raise?

print(biggest_raise <-max(salaries$adjustment))

salaries[salaries$adjustment==biggest_raise,"adjustment"]

# What was the "name" of the employee who received the highest raise?
salaries[salaries$adjustment==biggest_raise,"employees"]

# What was the largest decrease