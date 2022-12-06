package(readr)
library(readr)

data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

class(data01)

## Question: Output is "data.frame", indicating data01 is a data frame

dim(data01)

## Question1: Output is 60 40, meaning there are 60 observations
# of 40 variables. 60 rows 40 columns

## Question 2:
# a. data01[c(1, 2, 3, 4), c(1:10)]
# b. data01[c(5: 10), c(1:10)]

data01[c(1, 2, 3, 4), c(1:10)]
data01[c(5: 10), c(1:10)]

# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)

sum(patient_1)

class(patient_1)
## Question3:
# a. 18
# b. 218

# max inflammation for patient 1
max(data01[1, ])


mean(as.numeric(data01[1, ]))

## Question 4: 3, command below
min(data01[2, 7])

## Question5: 5.45

avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)

plot(avg_day_inflammation)

max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)

