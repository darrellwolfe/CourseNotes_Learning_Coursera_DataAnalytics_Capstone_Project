-- !preview conn=conn
--  PRIMARY KEY became an issue while importing data, removing Primary Key component for now.

CREATE TABLE [dbo].[Cyclistic_divvy_tripdata] (
    ride_id VARCHAR(60), 
    rideable_type VARCHAR(MAX),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(MAX),
    start_station_id VARCHAR(MAX),
    end_station_name VARCHAR(MAX),
    end_station_id VARCHAR(MAX),
    start_lat DECIMAL(22, 20),
    start_lng DECIMAL(22, 20),
    end_lat DECIMAL(22, 20),
    end_lng DECIMAL(22, 20),    
    member_casual VARCHAR(MAX)
);



ALTER TABLE [dbo].[Cyclistic_divvy_tripdata]
ADD month_started_at INT,
    year_started_at INT;


UPDATE [dbo].[Cyclistic_divvy_tripdata]
SET month_started_at = MONTH(started_at),
    year_started_at = YEAR(started_at);



ALTER TABLE [dbo].[Cyclistic_divvy_tripdata]
ADD ride_length INT,
    day_of_week VARCHAR(9);


ALTER TABLE [dbo].[Cyclistic_divvy_tripdata]
ADD month_name VARCHAR(20);

-- GPT-4 tried to follow this with from parts, but we have the original date, so I changed this to be simpler.
-- UPDATE [dbo].[Cyclistic_divvy_tripdata]
-- SET month_name = DATENAME(MONTH, DATEFROMPARTS(year_started_at, month_started_at, 1));

UPDATE [dbo].[Cyclistic_divvy_tripdata]
SET month_name = DATENAME(MONTH, started_at);


DELETE FROM [dbo].[Cyclistic_divvy_tripdata]
WHERE ride_id IS NULL
  AND rideable_type IS NULL
  AND started_at IS NULL
  AND ended_at IS NULL
  AND start_station_name IS NULL
  AND member_casual IS NULL;


WITH CTE AS (
  SELECT 
    ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY ride_id) AS rn,
    *
  FROM [dbo].[Cyclistic_divvy_tripdata]
)
DELETE FROM CTE WHERE rn > 1;



ALTER TABLE [dbo].[Cyclistic_divvy_tripdata]
ADD season VARCHAR(20);


UPDATE [dbo].[Cyclistic_divvy_tripdata]
SET season = 
  CASE 
    WHEN MONTH(started_at) IN (3, 4, 5) THEN 'Spring'
    WHEN MONTH(started_at) IN (6, 7, 8) THEN 'Summer'
    WHEN MONTH(started_at) IN (9, 10, 11) THEN 'Autumn'
    ELSE 'Winter'
  END;



