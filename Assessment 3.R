library(dslabs)
library(dplyr)

data(heights)
options(digits = 3) 


#Question 1
#1 point possible (graded)
#First, determine the average height in this dataset. Then create a logical vector ind with the indices for those individuals who are above average height.

#How many individuals in the dataset are above average height?

head(heights)
str(heights)

avg <- mean(heights$height)
ind <- heights$height > avg
sum(ind)

#answer: 532

#Question 2
#How many individuals in the dataset are above average height and are female?

female <- heights$sex == "Female"

femaleabove <- female & ind
sum(femaleabove)
#answer: 31

#Question 3
#If you use mean() on a logical (TRUE/FALSE) vector, it returns the proportion of observations that are TRUE.
#What proportion of individuals in the dataset are female?
mean(female)

#answer: 0.226

#Question 4
#This question takes you through three steps to determine the sex of the individual with the minimum height.
#Determine the minimum height in the heights dataset.

which.min(heights$height)
#answer: 50

#Use the match() function to determine the index of the first individual with the minimum height.
heights$height[1032]
match(50,heights$height)
#answer: 1032

#Subset the sex column of the dataset by the index in 4b to determine the individual’s sex.
heights$sex[1032]

#answer: Male

#Question 5

#This question takes you through three steps to determine how many of the integer height values between the minimum and maximum heights are not actual heights of individuals in the heights dataset
which.max(heights$height)
heights$height[which.max(heights$height)]
max(heights$height)

#answer: 82.6

#Which integer values are between the maximum and minimum heights? For example, if the minimum height is 10.2 and the maximum height is 20.8, your answer should be x <- 11:20 to capture the integers in between those values. (If either the maximum or minimum height are integers, include those values too.)
#Write code to create a vector x that includes the integers between the minimum and maximum heights (as numbers).
min(heights$height)
max(heights$height)
x <- filter(heights, height > 50 & height < 82.6)
x
x <- heights$height > 50 & heights$height < 82.6
sort(heights$height[x])
max(sort(heights$height[x]))
x <- 51:82
#answer: x <- 50:82

sum(!(x %in% heights$height))
#answer: 3


#Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.
heights2 <- mutate(heights,ht_cm = height*2.54)
#What is the height in centimeters of the 18th individual (index 18)?
heights$ht_cm[18]
#answer: 163

#What is the mean height in centimeters?
mean(heights$ht_cm)
#answer: 174


#Question 7
# Create a data frame females by filtering the heights2 data to contain only female individuals.
#How many females are in the heights2 dataset?

female <- filter(heights2, sex == "Female")
female
count(female)
nrow(female)
#answer: 238

#What is the mean height of the females in centimeters?
mean(female$ht_cm)
#answer: 165

#Question 8
#The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?

data(olive)
head(olive)
names(olive)

plot(olive$palmitic,olive$palmitoleic)

#answer: There is a positive linear relationship between palmitic and palmitoleic.

#Question 9
#Create a histogram of the percentage of eicosenoic acid in olive.
#Which of the following is true?
hist(olive$eicosenoic)

#answer: The most common value of eicosenoic acid is below 0.05%.


#Question 10
#Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
#Which region has the highest median palmitic acid percentage?

boxplot(palmitic~region, data=olive)

#answer: Southern Italy









