-- !preview conn=conn

SELECT TOP 10 *
FROM dbo.Cyclistic_divvy_tripdata
ORDER BY started_at DESC


SELECT
rideable_type,
COUNT(ride_id) AS Trips
FROM dbo.Cyclistic_divvy_tripdata
GROUP BY rideable_type;


-- Checking for duplicate ride_id since this was part of the reason my bulk inserts weren't working according to the error messages
WITH CTE AS (
  SELECT 
    ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY ride_id) AS rn,
    *
  FROM [dbo].[Cyclistic_divvy_tripdata]
)

SELECT *
FROM CTE
WHERE CTE.rn > 1

-- After running DELETEs, no Row Numbers greater than 1, therefore all duplicates removed. 


SELECT 
member_casual,
AVG(ride_length) AS Average_Ride_Length
FROM dbo.Cyclistic_divvy_tripdata
GROUP BY member_casual


--MEDIAN(ride_length) AS Median_Ride_Length -- No MEDIAN in SQL Server Lite
-- Optional way to accomplish this (probably just do it in R)
-- This approach resulted in NULL Median
SELECT 
    member_casual,
    AVG(ride_length) AS Average_Ride_Length,
    (
        SELECT AVG(1.0 * sub.ride_length) AS median
        FROM (
            SELECT ride_length, ROW_NUMBER() OVER (ORDER BY ride_length) AS rn1,
                   ROW_NUMBER() OVER (ORDER BY ride_length DESC) AS rn2
            FROM dbo.Cyclistic_divvy_tripdata
            WHERE member_casual = main.member_casual
        ) AS sub
        WHERE rn1 IN (rn2, rn2 - 1, rn2 + 1)
    ) AS Median_Ride_Length
FROM dbo.Cyclistic_divvy_tripdata AS main
GROUP BY member_casual;


-- MODE is Excel, in SQL we can:
SELECT 
member_casual,
day_of_week,
ride_length

FROM (
  SELECT member_casual,
        day_of_week,
        ride_length,
         ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS Rank
  FROM [dbo].[Cyclistic_divvy_tripdata]
  GROUP BY 
        member_casual,
        day_of_week,
        ride_length

) AS Subquery
WHERE Rank = 1;

