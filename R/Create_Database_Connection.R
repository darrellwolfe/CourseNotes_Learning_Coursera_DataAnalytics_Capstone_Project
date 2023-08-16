install.packages("DBI")
install.packages("odbc")

library(DBI)
library(odbc)

# This did not work:
# Server = "LAPTOP-76LHVPRQ\SQLEXPRESS",
# That worked!
# Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",

conn <- dbConnect(odbc(),
                  Driver = "SQL Server",
                  Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",
                  Database = "Coursera_Capstone_Project",
                  Trusted_Connection = "True")
