<<<<<<< HEAD
-- !preview conn=conn

/*
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202201-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202202-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202203-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202204-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202205-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202206-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202207-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202208-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202209-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202210-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202211-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202212-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202301-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202302-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202303-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202304-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202305-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202306-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202307-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202308-divvy-tripdata.csv'
*/




BULK INSERT Cyclistic_divvy_tripdata
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202201-divvy-tripdata.csv'

WITH (
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '\n',
   FIRSTROW = 2
);


=======
-- !preview conn=conn

/*
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202201-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202202-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202203-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202204-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202205-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202206-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202207-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202208-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202209-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202210-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202211-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202212-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202301-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202302-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202303-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202304-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202305-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202306-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202307-divvy-tripdata.csv'
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202308-divvy-tripdata.csv'
*/




BULK INSERT Cyclistic_divvy_tripdata
FROM 'C:\Users\darre\OneDrive\Documents\Coursera_Capstone_Project\CSV\202201-divvy-tripdata.csv'

WITH (
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '\n',
   FIRSTROW = 2
);


>>>>>>> 24b99bb47f90bc8d6f4d6572d35b2d444c47e7b1
