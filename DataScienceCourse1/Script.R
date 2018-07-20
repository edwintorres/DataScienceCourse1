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