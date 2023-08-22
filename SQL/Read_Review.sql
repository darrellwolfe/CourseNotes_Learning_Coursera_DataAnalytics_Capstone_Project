-- !preview conn=conn

SELECT TOP 10 *
FROM dbo.Cyclistic_divvy_tripdata
ORDER BY started_at DESC

SELECT
rideable_type,
COUNT(ride_id) AS Trips
FROM dbo.Cyclistic_divvy_tripdata
GROUP BY rideable_type;


SELECT 
member_casual,
AVG(ride_length) AS Average_Ride_Length
FROM dbo.Cyclistic_divvy_tripdata
GROUP BY member_casual

