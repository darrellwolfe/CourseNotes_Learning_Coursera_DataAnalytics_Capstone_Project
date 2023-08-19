CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    [ride_id]            VARCHAR (60)     NOT NULL,
    [rideable_type]      VARCHAR (MAX)    NULL,
    [started_at]         DATETIME         NULL,
    [ended_at]           DATETIME         NULL,
    [start_station_name] VARCHAR (MAX)    NULL,
    [start_station_id]   VARCHAR (MAX)    NULL,
    [end_station_name]   VARCHAR (MAX)    NULL,
    [end_station_id]     VARCHAR (MAX)    NULL,
    [start_lat]          DECIMAL (22, 20) NULL,
    [start_lng]          DECIMAL (22, 20) NULL,
    [end_lat]            DECIMAL (22, 20) NULL,
    [end_lng]            DECIMAL (22, 20) NULL,
    [member_casual]      VARCHAR (MAX)    NULL,
    PRIMARY KEY CLUSTERED ([ride_id] ASC)
);

