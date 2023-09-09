#Question 1
library(readxl)
BlackFriday <- read_excel("Documents/Maryville University/DSCI_502/BlackFriday.xlsx")
View(BlackFriday)

#Question 2
sum <- 0
for (i in c(1:nrow(BlackFriday))){
  sum <- sum + BlackFriday[i, 'Purchase']
}
avg <- sum/nrow(BlackFriday)
print(avg)

#Question 3
sum <- 0
i <- 1
while (i <= nrow(BlackFriday)){
  sum <- sum + BlackFriday[i, 'Purchase']
  i <- i + 1
}
avg <- sum/nrow(BlackFriday)
print(avg)

#Question 4
sum <- 0
i <- 1
repeat {
  sum <- sum + BlackFriday[i, 'Purchase']
  i <- i + 1
  if (i > nrow(BlackFriday)){
    break
  }
}
avg <- sum/nrow(BlackFriday)
print(avg)

#Question 5
f_sum <- 0
f_count <- 0
for (i in c(1:nrow(BlackFriday))){
  if (BlackFriday[i, 'Gender'] == 'F'){
    f_sum <- f_sum + BlackFriday[i, 'Purchase']
    f_count <- f_count + 1
  }
}
f_avg <- f_sum/f_count
print(f_avg)

#Question 6
f_sum <- 0
f_count <- 0
i <- 1
while (i <= nrow(BlackFriday)){
  if (BlackFriday[i, 'Gender'] == 'F'){
    f_sum <- f_sum + BlackFriday[i, 'Purchase']
    f_count <- f_count + 1
  }
  i <- i + 1
}
f_avg <- f_sum/f_count
print(f_avg)

#Question 7
f_sum <- 0
f_count <- 0
i <- 1
repeat {
  if (BlackFriday[i,'Gender'] == 'F'){
    f_sum <- f_sum + BlackFriday[i,'Purchase']
    f_count <- f_count + 1
  }
  i <- i + 1
  if (i > nrow(BlackFriday)){
    break
  }
}
f_avg <- f_sum/f_count
print(f_avg)

#Question 8
f_sum <- 0
f_count <- 0
m_sum <- 0
m_count <- 0
for (i in c(1:nrow(BlackFriday))){
  if (BlackFriday[i, 'Gender'] == 'F'){
    f_sum <- f_sum + BlackFriday[i, 'Purchase']
    f_count <- f_count + 1
  }
  if (BlackFriday[i, 'Gender'] == 'M'){
    m_sum <- m_sum + BlackFriday[i, 'Purchase']
    m_count <- m_count + 1
  }
}
f_avg <- f_sum/f_count
m_avg <- m_sum/m_count
avg_diff <- f_avg - m_avg
print(avg_diff)
