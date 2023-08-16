<<<<<<< HEAD
-- !preview conn=conn

CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    ride_id VARCHAR(60) PRIMARY KEY,
    rideable_type VARCHAR(MAX),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(MAX),
    start_station_id VARCHAR(MAX),
    end_station_name VARCHAR(MAX),
    end_station_id VARCHAR(MAX),
    start_lat DECIMAL(5, 2),
    start_lng DECIMAL(5, 2),
    end_lat DECIMAL(5, 2),
    end_lng DECIMAL(5, 2),
    member_casual VARCHAR(MAX)
);


=======
-- !preview conn=conn

CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    ride_id VARCHAR(60) PRIMARY KEY,
    rideable_type VARCHAR(MAX),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(MAX),
    start_station_id VARCHAR(MAX),
    end_station_name VARCHAR(MAX),
    end_station_id VARCHAR(MAX),
    start_lat DECIMAL(5, 2),
    start_lng DECIMAL(5, 2),
    end_lat DECIMAL(5, 2),
    end_lng DECIMAL(5, 2),
    member_casual VARCHAR(MAX)
);


>>>>>>> 24b99bb47f90bc8d6f4d6572d35b2d444c47e7b1
