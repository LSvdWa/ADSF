dataRDS
pairs(dataRDS)

model2 <- lm(Outcome ~ Age + BMI, 
             data = dataRDS)

# Ask for summary statistics again
summary(model2)

library(ggplot2)

# Assuming 'df' is your data frame with columns 'y', 'x1', 'x2'

# Plot with regression line for x1
ggplot(dataRDS, aes(x = Age, y = Outcome)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) + # se = FALSE to hide confidence interval
  labs(title = "Relationship between y and x1")

# Plot with regression line for x2
ggplot(dataRDS, aes(x = BMI, y = Outcome)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Relationship between y and x2")

