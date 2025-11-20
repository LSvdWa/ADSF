# Load .CSV and save as .RDS

datacsv <- read.csv("./ADSF/project_organization-2/3_best/data/raw/diabetes.csv", header = TRUE)
saveRDS(datacsv, "./ADSF/project_organization-2/3_best/data/raw/dataset.rds")

# Preprocessing
dataRDS <- readRDS("./ADSF/project_organization-2/3_best/data/raw/dataset.rds")
dataRDS <- na.omit(dataRDS) # removes NA from important columns
saveRDS(dataRDS, "./ADSF/project_organization-2/3_best/data/processed/dataset.rds")
dataset <- readRDS("./ADSF/project_organization-2/3_best/data/processed/dataset.rds")
summary(dataset)

# PassengerId Survived Pclass Name Sex Age SibSp Parch Ticket Fare Cabin Embarked
