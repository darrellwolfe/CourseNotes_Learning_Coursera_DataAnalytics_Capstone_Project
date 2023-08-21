# This did not work:
# Server = "LAPTOP-76LHVPRQ\SQLEXPRESS",
# That worked!
# Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",


install.packages("DBI")
install.packages("odbc")
install.packages("RODBC")
install.packages("tidyverse")
install.packages("ggplot2")


library(DBI)
library(odbc)
library(RODBC)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(scales)


connection <- odbcDriverConnect("driver={SQL Server};server=LAPTOP-76LHVPRQ\\SQLEXPRESS;database=Coursera_Capstone_Project;trusted_connection=true")

Cyclistic_df <- sqlFetch(connection, "dbo.Cyclistic_divvy_tripdata")

write.csv(Cyclistic_df, "C:/Users/darre/OneDrive/Documents/!Datasets/Cyclistic_divvy_tripdata CSVs/Final Dataset/Cyclistic_df.csv", row.names = FALSE)




# This option also works normally, but I found it created random errors.
# conn <- dbConnect(odbc(),
#                 Driver = "SQL Server",
#                Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",
#               Database = "Coursera_Capstone_Project",
#              Trusted_Connection = "True")
