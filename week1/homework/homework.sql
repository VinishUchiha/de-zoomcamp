-- First Question
select count(*) from green_taxi_data
where lpep_pickup_datetime::DATE='2019-01-15' and lpep_dropoff_datetime::DATE='2019-01-15'

--Second Question
select trip_distance from green_taxi_data
where lpep_pickup_datetime::DATE='2019-01-10' order by trip_distance desc

--Third Question
select count(*) from green_taxi_data
where lpep_pickup_datetime::DATE='2019-01-01' and passenger_count=2

select count(*) from green_taxi_data
where lpep_pickup_datetime::DATE='2019-01-01' and passenger_count=3

--Fourth Question
select * from green_taxi_data t 
join zones zpu on t."PULocationID" = zpu."LocationID"
join zones zdo on t."DOLocationID" = zdo."LocationID"
where zpu."Zone"='Astoria' order by tip_amount desc
