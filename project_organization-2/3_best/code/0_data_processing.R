# Load .CSV and save as .RDS

datacsv <- read.csv("./data/raw/diabetes.csv", header = TRUE)
saveRDS(datacsv, "./data/raw/dataset.rds")

# Preprocessing
dataRDS <- readRDS("./data/raw/dataset.rds")
dataRDS <- na.omit(dataRDS) # removes NA from important columns
saveRDS(dataRDS, "./data/processed/dataset.rds")
dataset <- readRDS("./data/processed/dataset.rds")

# Recoding
dataRDS$BMI[dataRDS$BMI <= 18.5 ] <- 1
dataRDS$BMI[dataRDS$BMI > 18.5 & dataRDS$BMI <= 25  ] <- 2
dataRDS$BMI[dataRDS$BMI > 25 & dataRDS$BMI <= 30 ] <- 3
dataRDS$BMI[dataRDS$BMI > 30] <- 4

summary(dataset)

# PassengerId Survived Pclass Name Sex Age SibSp Parch Ticket Fare Cabin Embarked
