library("dslabs")

#question 3
#Mandi, Amy, Nicole, and Olivia all ran different distances in different time intervals. Their distances (in miles) and times (in minutes) are as follows:
  
#name <- c("Mandi", "Amy", "Nicole", "Olivia")
#distance <- c(0.8, 3.1, 2.8, 4.0)
#time <- c(10, 30, 40, 50)

#Write a line of code to convert time to hours. Remember there are 60 minutes in an hour. Then write a line of code to calculate the speed of each runner in miles per hour. Speed is distance divided by time.

options(digits = 4)
new_table <- data.frame(name = c("Mandi", "Amy", "Nicole", "Olivia"),
                        distance = c(0.8, 3.1, 2.8, 4.0),
                        time = c(10, 30, 40, 50)/60,speed =c(new_table$distance/new_table$time),stringsAsFactors = FALSE)

new_table

#How many hours did Olivia run?
new_table$time[4]
#What was Mandi's speed in miles per hour?
new_table$speed[1]
#Which runner had the fastest speed?
new_table$name[2]



