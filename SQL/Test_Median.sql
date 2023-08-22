
--MEDIAN(ride_length) AS Median_Ride_Length -- No MEDIAN in SQL Server Lite
-- Optional way to accomplish this (probably just do it in R)
-- This approach resulted in NULL Median, this is easier in R.

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
