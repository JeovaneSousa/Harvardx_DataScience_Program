library("dslabs")


#Question: 1
options(digits = 3)
a <-  2
b <- -1
C <- -4

quadratic_1 < - (-b + sqrt(b^2 - 4*a*c)) / (2*a)
quadratic_2 < - (-b - sqrt(b^2 - 4*a*c)) / (2*a)

#Question: 2 
log(1024,base=4)

#Question:3
data(movielens)

str(movielens)
class(movielens$genres)
nlevels(movielens$genres)
levels(movielens$genres)
