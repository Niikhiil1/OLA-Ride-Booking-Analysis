select top 10 * from Bookings;

--Retrieve all sucessful bookings.

create view Successful_Bookings as 
select * from Bookings 
where Booking_status = 'Success';

select * from Successful_Bookings;


--find the avg ride distance for each vehicle type.

create view avg_ride_distance as
select Vehicle_Type,
avg(Ride_distance) as avg_distance
from Bookings
group by Vehicle_Type;

select * from avg_ride_distance;

--get total number of cancelled rides by customers

create view Ride_Cancelled as 
select 
count(*) as total_ride_cancelled
from Bookings
where Booking_Status = 'Canceled by Customer';

select * from Ride_Cancelled;

--list top 5 customers who booked the highest number of rides

create view highest_number as
select top 5
customer_id,
count(booking_id) as total_rides
from Bookings
group by customer_id
order by count(booking_id) desc;

select * from highest_number;

--get total number of rides cancelled by drivers due to personal and car_related issues

create view total_rides_cancelled_by_driver as
select count(*) as total_rides_cancelled 
from Bookings
where Booking_Status = 'Canceled by Driver'
and Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from total_rides_cancelled_by_driver;

--find the max and min driver ratings for prime sedan bookings

create view rating_ratio as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from Bookings
where Vehicle_Type = 'Prime Sedan';

select * from rating_ratio;

--retrieve all rides where payment was made using upi


create view upi_payment_method as
select * from Bookings
where Payment_Method = 'UPI';

select * from upi_payment_method;

--select avg customer rating per vehicle type

select top 5 * from Bookings;

create view rating_per_vehicle_type as
select avg(Customer_Rating) as avg_customer_rating,
Vehicle_Type
from Bookings
group by Vehicle_Type;

select * from rating_per_vehicle_type;


--calculate total booking value of rides completed successfully

create view overall_value as
select 
sum(Booking_Value) as total_booking_value
from Bookings 
where Booking_status = 'Success';

select * from overall_value;

--list all incomplete rides along with the reason

select top 5 * from Bookings;

create view reason_to_cancel_ride as
select Booking_id,
incomplete_rides_reason
from Bookings
where Incomplete_Rides = 1;

select * from reason_to_cancel_ride;