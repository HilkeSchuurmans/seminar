####### Loading packages #######
if(!require("skimr")) install.packages("skimr")

library(skimr)


####### Loading data #######

Speed_dates <- read.csv("/Users/Hilke/Desktop/Master/Speed_dates/Speed_dates.csv")

####### Data preparation #######

## Removing NA's ##

skim(Speed_dates)

sum(is.na(Speed_dates))

speeddates <- na.omit(Speed_dates)

sum(is.na(speeddates)) # Check

str(speeddates)

## Subsetting the numeric data (39 variables)

speeddates_num <- speeddates[c(3,7:8,11,16:50)]

## Scaling the data ##

speeddates_scaled <- scale(speeddates_num)

###### Methodology ######

### 1. Suitability of clustering the data
## Hopkins Statistic

### 2. Choosing clustering approach
## Agglomerative (bottom-up) vs. divisive (top-down)
# Agglomerative

### 3. Distance/dissimilarity measures: Euclidian versus Manhattan

diss <- dist(speeddates_scaled, method = "euclidian")


### 4. Choosing the appropriate linking method
##  Complete
hc1 <- hclust(diss, method = "complete")
##  Single
hc2 <- hclust(diss, method = "single")
##  Average
hc3  <- hclust(diss, method = "average")
##  Centroids,
##  Ward

## Agglomerative coefficients
## Cophenetic correlation coefficient


### 5. Choosing the optimal number of K clusters
##  Dendrogram
##   Elbow method
##  Dunn's index     
##   Average silhouette width
##   Gap statistic

## Within cluster sum of squares










