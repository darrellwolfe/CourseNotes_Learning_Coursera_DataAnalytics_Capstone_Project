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
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),    
    member_casual VARCHAR(MAX)
);