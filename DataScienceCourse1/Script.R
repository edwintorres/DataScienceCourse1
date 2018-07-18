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