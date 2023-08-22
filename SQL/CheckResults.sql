-- !preview conn=conn

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




