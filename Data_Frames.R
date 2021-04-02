## This project will import a dataset and subset the first 100 rows 
## into a data frame and then we will melt it down
# Imports for packages 'reshape2' and 'rio'
library(reshape2)
library(rio)
# Import the Australian weather dataset into the weather variable
weather <- import("weatherAUS.csv")
# Subset weather to the first 100 rows into df variable
df <- weather[1:100,]
# Create a unique ID for each row in df
df$ID <- 1:nrow(df)
# Melt down df into ds only keeping certain columns the same
ds <- melt(df, id.vars = c("Date", "Location", "ID", "RainToday", "RainTomorrow"))
