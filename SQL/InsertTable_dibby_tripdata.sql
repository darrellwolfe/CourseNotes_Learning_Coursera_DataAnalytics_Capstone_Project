-- !preview conn=conn

/*
I replaced the line with the new CSV for each of the months Jan 2022 through Aug 2023
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202201-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202202-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202203-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202204-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202205-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202206-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202207-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202208-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202209-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202210-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202211-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202212-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202301-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202302-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202303-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202304-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202305-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202306-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202307-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202308-divvy-tripdata.csv'
*/




BULK INSERT Cyclistic_divvy_tripdata
FROM 'C:\Users\darre\OneDrive\Documents\!Datasets\Cyclistic_divvy_tripdata CSVs\CSVs\202209-divvy-tripdata.csv'

WITH (
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '\n',
   FIRSTROW = 2
);

