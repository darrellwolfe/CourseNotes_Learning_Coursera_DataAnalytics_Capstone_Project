-- MODE is Excel, in SQL we can try something like this

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