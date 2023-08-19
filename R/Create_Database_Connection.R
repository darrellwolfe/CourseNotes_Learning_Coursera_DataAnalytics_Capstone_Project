# This did not work:
# Server = "LAPTOP-76LHVPRQ\SQLEXPRESS",
# That worked!
# Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",

# conn <- dbConnect(odbc(),
#                 Driver = "SQL Server",
#                Server = "LAPTOP-76LHVPRQ\\SQLEXPRESS",
#               Database = "Coursera_Capstone_Project",
#              Trusted_Connection = "True")


install.packages("DBI")
install.packages("odbc")
install.packages("RODBC")
install.packages("tidyverse")


library(DBI)
library(odbc)
library(RODBC)
library(tidyverse)

connection <- odbcDriverConnect("driver={SQL Server};server=LAPTOP-76LHVPRQ\\SQLEXPRESS;database=Coursera_Capstone_Project;trusted_connection=true")

Cyclistic_df <- sqlFetch(connection, "dbo.Cyclistic_divvy_tripdata")

colnames(Cyclistic_df)

mean(Cyclistic_df$ride_length)

median(Cyclistic_df$ride_length)

max(Cyclistic_df$ride_length)

library(dplyr)

Cyclistic_df %>%
  group_by(member_casual) %>%
  summarise(max_ride_length = max(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual) %>%
  summarise(mean_ride_length = mean(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual) %>%
  summarise(median_ride_length = median(ride_length, na.rm = TRUE))


Cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(max_ride_length = max(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(mean_ride_length = mean(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(median_ride_length = median(ride_length, na.rm = TRUE))




Cyclistic_df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(max_ride_length = max(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(mean_ride_length = mean(ride_length, na.rm = TRUE))

Cyclistic_df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(median_ride_length = median(ride_length, na.rm = TRUE))

colnames(Cyclistic_df)


view(Cyclistic_df %>%
                            group_by(member_casual, month_name) %>%
                            summarise(max_ride_length = max(ride_length, na.rm = TRUE)))

view(Cyclistic_df %>%
                             group_by(member_casual, month_name) %>%
                             summarise(mean_ride_length = mean(ride_length, na.rm = TRUE)))
view(Cyclistic_df %>%
                               group_by(member_casual, month_name) %>%
                               summarise(median_ride_length = median(ride_length, na.rm = TRUE)))


Members_Month_MAX <- Cyclistic_df %>%
  group_by(member_casual, month_name) %>%
  summarise(max_ride_length = max(ride_length, na.rm = TRUE))

Members_Month_Mean <- Cyclistic_df %>%
  group_by(member_casual, month_name) %>%
  summarise(mean_ride_length = mean(ride_length, na.rm = TRUE))

Members_Month_Median <- Cyclistic_df %>%
  group_by(member_casual, month_name) %>%
  summarise(median_ride_length = median(ride_length, na.rm = TRUE))

install.packages(ggplot2)

ggplot(data = Members_Month_MAX) +
  geom_point(mapping = aes(x = month_name, y = max_ride_length, color = member_casual, size = .25))
ggsave("Max_Ride_Length.jpg")

ggplot(data = Members_Month_Mean) +
  geom_point(mapping = aes(x = month_name, y = mean_ride_length, color = member_casual, size = .25))
ggsave("Mean_Ride_Length.jpg")

ggplot(data = Members_Month_Median) +
  geom_point(mapping = aes(x = month_name, y = median_ride_length, color = member_casual, size = .25))
ggsave("Median_Ride_Length.jpg")


library(ggplot2)
library(scales)

ggplot(Cyclistic_df, aes(x = member_casual)) +
  geom_bar() +
  geom_text(aes(label = sprintf("%s", comma(..count..))), stat = 'count', vjust = -0.5)

ggsave("Bar_Members_vs_Casual.jpg")




