
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


colnames(Cyclistic_df)
str(Cyclistic_df)

total_rides <- nrow(Cyclistic_df)

mean(Cyclistic_df$ride_length)

median(Cyclistic_df$ride_length)

max(Cyclistic_df$ride_length)





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








view(Cyclistic_df %>%
       group_by(member_casual, month_started_at, month_name, season) %>%
       summarise(max_ride_length = max(ride_length, na.rm = TRUE)))

view(Cyclistic_df %>%
       group_by(member_casual, month_started_at, month_name, season) %>%
       summarise(mean_ride_length = mean(ride_length, na.rm = TRUE)))

view(Cyclistic_df %>%
       group_by(member_casual, month_started_at, month_name, season) %>%
       summarise(median_ride_length = median(ride_length, na.rm = TRUE)))




Members_Month_MAX <- Cyclistic_df %>%
  group_by(member_casual, month_started_at, month_name, season) %>%
  summarise(max_ride_length = max(ride_length, na.rm = TRUE))

Members_Month_Mean <- Cyclistic_df %>%
  group_by(member_casual, month_started_at, month_name, season) %>%
  summarise(mean_ride_length = mean(ride_length, na.rm = TRUE))

Members_Month_Median <- Cyclistic_df %>%
  group_by(member_casual, month_started_at, month_name, season) %>%
  summarise(median_ride_length = median(ride_length, na.rm = TRUE))










ggplot(data = Members_Month_MAX) +
  geom_point(mapping = aes(x = season, y = max_ride_length, color = member_casual, size = .25))

ggplot(data = Members_Month_Mean) +
  geom_point(mapping = aes(x = season, y = mean_ride_length, color = member_casual, size = .25))

ggplot(data = Members_Month_Median) + 
  geom_point(mapping = aes(x = season, y = median_ride_length, color = member_casual, size = .25))

  #  geom_smooth(mapping = aes(x = season, y = median_ride_length, color = member_casual), method = lm, se = FALSE)




ggsave("Mean_Ride_Length.jpg")
ggsave("Max_Ride_Length.jpg")
ggsave("Median_Ride_Length.jpg")



ggplot(Cyclistic_df, aes(x = member_casual)) +
  geom_bar() +
  geom_text(aes(label = sprintf("%s", comma(..count..))), stat = 'count', vjust = -0.5)

ggsave("Bar_Members_vs_Casual.jpg")