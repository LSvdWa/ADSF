# Load .CSV and save as .RDS
datacsv <- read.csv("./data/raw/tested.csv", header = TRUE)
saveRDS(datacsv, "./data/raw/dataset.rds")

# Preprocessing
dataRDS <- readRDS("./data/raw/dataset.rds")
dataRDS <- na.omit(dataRDS) # removes NA from important columns
saveRDS(dataRDS, "./data/processed/dataset.rds")
dataset <- readRDS("./data/processed/dataset.rds")
summary(dataset)

# PassengerId Survived Pclass Name Sex Age SibSp Parch Ticket Fare Cabin Embarked
