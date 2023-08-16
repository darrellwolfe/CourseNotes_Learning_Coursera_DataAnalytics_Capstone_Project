<<<<<<< HEAD
-- !preview conn=conn

-- Drop the existing table
DROP TABLE [dbo].[Cyclistic_divvy_tripdata];

/*
-- Create the new table with the updated structure
CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    [ride_id]            VARCHAR (60)   NOT NULL,
    [rideable_type]      VARCHAR (MAX)   NULL,
    [started_at]         DATETIME        NULL,
    [ended_at]           DATETIME        NULL,
    [start_station_name] VARCHAR (MAX)   NULL,
    [start_station_id]   VARCHAR (MAX)   NULL,
    [end_station_name]   VARCHAR (MAX)   NULL,
    [end_station_id]     VARCHAR (MAX)   NULL,
    [start_lat]          DECIMAL (5, 2)  NULL,
    [start_lng]          DECIMAL (5, 2)  NULL,
    [end_lat]            DECIMAL (5, 2)  NULL,
    [end_lng]            DECIMAL (5, 2)  NULL,
    [member_casual]      VARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([ride_id] ASC)
);
=======
-- !preview conn=conn

-- Drop the existing table
DROP TABLE [dbo].[Cyclistic_divvy_tripdata];

/*
-- Create the new table with the updated structure
CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    [ride_id]            VARCHAR (60)   NOT NULL,
    [rideable_type]      VARCHAR (MAX)   NULL,
    [started_at]         DATETIME        NULL,
    [ended_at]           DATETIME        NULL,
    [start_station_name] VARCHAR (MAX)   NULL,
    [start_station_id]   VARCHAR (MAX)   NULL,
    [end_station_name]   VARCHAR (MAX)   NULL,
    [end_station_id]     VARCHAR (MAX)   NULL,
    [start_lat]          DECIMAL (5, 2)  NULL,
    [start_lng]          DECIMAL (5, 2)  NULL,
    [end_lat]            DECIMAL (5, 2)  NULL,
    [end_lng]            DECIMAL (5, 2)  NULL,
    [member_casual]      VARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([ride_id] ASC)
);
>>>>>>> 24b99bb47f90bc8d6f4d6572d35b2d444c47e7b1
*/