########################################################
# Script file to test assignments and material from
#   HarvardX: PH125.1x Data Science: R Basics
#   This is my personal test
########################################################

# We can use the print() function
print("Hello World!")
# Quotes can be suppressed in the output
print("Hello World!", quote = FALSE)
# If there are more than 1 item, we can concatenate using paste()
print(paste("How", "are", "you?"))

#New Edit for test
print("test test")

#dslabs lib from Harvard Data Science course
install.packages("dslabs")
library(dslabs)

#lecture about variables
a <- 1
b <- 1
c <- -1

print(a)
ls()
(-b + sqrt(b ^ 2 - 4 * a * c)) / (2 * a)
(-b - sqrt(b ^ 2 - 4 * a * c)) / (2 * a)

#Lecture about functions
#Function need the parenthesis, without the parenthesis the function show the source code
#example ls vs ls()
ls
ls()
log(a)

#nested functions
log(exp(a))

#help for functions
? log

#show the arguments yhay it needs
args(log)
log(x = 8, base = 2)
log(8, 2)
? "+"
#data sets included with R for users to practice and test out functions.
data()

co2

##test for 

x <- 3
log(exp(x))

library(dslabs)
data(murders)
class(murders)
murders
str(murders)
murders$state
murders$population
    
pop <- murders$population
pop
length(pop)
class(murders$region)

levels(murders$region)

a <- murders$abb
class(a)

1:5

# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]]

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b
b <- murders[["abb"]]

# Check if `a` and `b` are identical 
identical(a, b)

# -------------------------
# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable 
length(levels(murders$region))

# --------------------------------
# Here is an example of what the table function does
x <- c("a", "a", "b", "b", "b", "c")
table(x)

# Write one line of code to show the number of states per region
table(murders$region)

murders


n <- c(1, 2, 3)
na <- c("elem1", "elem2", "elem3")

names(n) <- na

n[c(2,1)]
n[c("elem1","elem2")]
1

murders



#--------------------------------
# Here is an example creating a numeric vector named cost
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
# Make sure to follow the same order in the instructions
temp <- c(35, 88, 42, 84, 81, 30)
temp

city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

city

names(temp) <- city

temp

temp[1:3]

temp[c(3, 5)]

x <- 12:73
x
length(x)

# Create a vector m of integers that starts at 32 and ends at 99.
m <- 32:99

# Determine the length of object m.
length(m)

# Create a vector x of integers that starts 12 and ends at 73.
x <- 12:73
# Determine the length of object x.
length(x)

# Create a vector with the multiples of 7, smaller than 50.
seq(7, 49, 7)

# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1, 99, 2)


# We can a vector with the multiples of 7, smaller than 50 like this 
seq(7, 49, 7)

# But note that the second argument does not need to be last number.
# It simply determines the maximum value permitted.
# so the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length

length(seq(6, 55, 4 / 7))


# Store the sequence in the object a
a <- seq(1, 10, length.out = 100)

class(a)
class(seq(1,20,length.out=5))

# Determine the class of a
class(a)



3L - 3

# Store the sequence in the object a
a <- seq(1, 11)

# Determine the class of a
class(a)



# Define the vector x
x <- c(1, 3, 5, "a")

# Note that the x is character vector
x

# Typecast the vector to get an integer vector
# You will get a warning but that is ok
y <- as.numeric(x)
y


#-------------------------------------------------
#SORT Section

# Access the `state` variable and store it in an object 
states <- murders$state

# Sort the object alphabetically and redefine the object 
states <- sort(states)

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop
pop <- murders$population

# Sort the object and save it in the same object 
pop <- sort(pop)

# Report the smallest population size 
min(pop)

# Access population from the dataset and store it in pop
pop <- murders$population
# Use the command order, to order pop and store in object o
o <- order(pop)
# Find the index number of the entry with the smallest population size
pop[o]
o[1]


# Find the smallest value for variable total 
which.min(murders$total)

# Find the smallest value for population
which.min(murders$population)


# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- murders$state

# Use the index you just defined to find the state with the smallest population
states[i]



temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

city_temps

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df <- data.frame(states = states, ranks = ranks)



test <- c(9,33,5,7,1)
test
rank(test)
order(test)
# Define a variable states to be the state names from the murders data frame
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)
# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[ind], ranks = ranks[ind])

my_df


ranks[1]
ind[1]
pop <- murders@population
pop[ranks[1]]
pop[ind[1]]

library(dslabs)
data(na_example)
str(na_example)
mean(na_example)

# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)
ind
# Determine how many NA ind has using the sum function
sum(ind==TRUE)



# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# Create the ind vector
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# We saw that this gives an NA
mean(na_example)

# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])

murders$state[which.max(murders$population)]

murder_rare <- murders$total / murders$population * 100
murder_rare
murders$state[order(murder_rare,decreasing = TRUE)]




# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (temp-32)*(5/9)
# Create a data frame `city_temps` 
city_temps <- data.frame(city = city, temp = temp)

city_temps


# Define an object `x` with the numbers 1 through 100
x <- 1:100
# Compute the sum 
#  1 + 1/2^2 + 1/3^2 + ... + 1/100^2
# π2/6.
sum(1 / x ^ 2)
3.14 ^ 2 / 6


# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total / murders$population * 100000
murder_rate
# Calculate the average murder rate in the US 
mean(murder_rate)

#RxSqlServerData(co,table = "[Dimension].[City]")


# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Get the indices of entries that are below 1
which(low)

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total / murders$population * 100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[which(low)]

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- murders$region=="Northeast" & low

# Names of states in `ind` 
murders$state[ind]

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total / murders$population * 100000

# Compute average murder rate and store in avg using `mean` 
mean <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
murders$state[which(murder_rate < mean)]
sum(murder_rate < mean)


# Store the 3 abbreviations in abbs in a vector (remember that they are character vectors and need quotes)
abbs <- c("AK","MI","IA")
# Match the abbs to the murders$abb and store in ind
ind <- match(abbs, murders$abb)
# Print state names from ind
murders$state[ind]


# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
i <- abbs %in% murders$abb

# abbs in murders$abb
abbs[which(abbs %in% murders$abb)]
# index of murders with abb in abbs
match(abbs[which(abbs %in% murders$abb)], murders$abb)
# Use which, %in% to find the states from abbs that exist on murders$abb
# Favorite
murders$state[match(abbs[which(abbs %in% murders$abb)], murders$abb)]

sum(abbs %in% murders$abb)
murders$state[abbs %in% murders$abb]


# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the `which` command and `!` operator to find out which abbreviation are not actually part of the dataset and store in ind
ind <- which(!abbs %in% murders$abb)

# What are the entries of abbs that are not actual abbreviations
abbs[ind]


######################################################
# Excersice Section 3.2 Filter, Mutate, Pip

library(dplyr)
library(dslabs)
data(murders)

murders <- mutate(murders, population_in_millions = population / 10 ^ 6)
head(murders)

# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes column named rate with the per 100,000 murder rates
murders <- mutate(murders,rate = total/population*100000)

head(murders)


# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <- murders$total / murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank=rank(-rate))

murders


select(murders, state, population)

# Use select to only show state names and abbreviations from murders
select(murders, state, abb)


# Add the necessary columns
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <= 5)


# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)



# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast","West"))
# Number of states (rows) in this category 
nrow(murders_nw)


# add the rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)


# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)





# Loading the libraries
library(dplyr)
data(murders)
# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate = total / population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)

my_states



##############################################################
# Section 3.3 Basic Visualization

# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population / 10 ^ 6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Transform population using the log10 transformation and save to object log10_population
log10_population <-  log10(murders$population)
log10_population
population_in_millions
# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(murders$total)
# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)

test <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
test2 <- test
log(test)
plot(test,test2)
plot(log10(test), log10(test))



# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population / 10 ^ 6


# Create a histogram of this variable
hist(population_in_millions)


# Create a boxplot of state populations by region for the murders dataset
boxplot(murders$population, murders$region)
? boxplot
boxplot(data.frame(murders$population, murders$region))

data(eusilcP)
strata <- stratify(eusilcP, c("region", "gender"))
summary(strata)

# Create a boxplot of state populations by region and specify dataset 
boxplot(population ~ region, data = murders)
boxplot()


################################
# Section 4

x <- c(1, 2, -3, 4)
if (all(x > 0)) {
    print("All Positives")
} else {
    print("Not All Positives")
}

char_len <- nchar(murders$state)
head(char_len)


# Assign the state abbreviation when the state name is longer than 8 characters 
new_name <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

new_name


# Create function called `sum_n`
sum_n <- function(n) {
    my_v <- 1:n
    sum(my_v)
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)



# Create `altman_plot` 
altman_plot <- function(x, y) {
    plot(x+y,y-x)
}


altman_plot(100, 200)



x <- 3
my_func <- function(y) {
    x <- 5
    y + 5
}
x




# Here is an example of function that adds numbers from 1 to n
example_func <- function(n) {
    x <- 1:n
    sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n that with argument n and returns of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n) {
    x <- 1:n
    x <- x ^ 2
    sum(x)
}
# Report the value of the sum when n=10
compute_s_n(10)



# Define a function and store it in `compute_s_n`
compute_s_n <- function(n) {
    x <- 1:n
    sum(x ^ 2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
n <- 25
for (i in 1:n) {
    s_n[i] <- compute_s_n(i)
}

s_n



# Define the function
compute_s_n <- function(n) {
    x <- 1:n
    sum(x ^ 2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for (i in n) {
    s_n[i] <- compute_s_n(i)
}

#  Create the plot 
plot(n, s_n)


# Define the function
compute_s_n <- function(n) {
    x <- 1:n
    sum(x ^ 2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for (i in n) {
    s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.
my_n <- function(n) {
    x <- n * (n + 1) * (2 * n + 1) / 6
    x
}
for (i in n) {
    s_n[n] == n(n + 1)(2 * n + 1) / 6

}

identical(s_n, n * (n + 1) * (2 * n + 1) / 6)


my_n(25)

identical(s_n[1],m(1))

