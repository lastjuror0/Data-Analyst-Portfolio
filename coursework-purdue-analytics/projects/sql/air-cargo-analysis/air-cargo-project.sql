-- Write a query to display all the passengers (customers) who have travelled in routes 01 to 25. Take data  from the passengers_on_flights table.
use air_cargo;

SELECT customer_id, first_name, last_name, route_id
FROM passengers_on_flights
join customer using(customer_Id)
where route_id between 1 and 25
order by route_id;
 
-- Write a query to identify the number of passengers and total revenue in business class from the ticket_details table.
select count(*) as total_passengers ,sum(price_per_ticket * no_of_tickets) as total_revenue
from ticket_details
where class_id = 'bussiness';

-- Write a query to display the full name of the customer by extracting the first name and last name from the customer table.
select customer_id, concat(first_name,' ', last_name) as full_name
from customer;


-- Write a query to extract the customers who have registered and booked a ticket. Use data from the customer and ticket_details tables.
select *
from ticket_details
join customer using(customer_id)
where p_date is not null
order by customer_id;

-- Write a query to identify the customer’s first name and last name based on their customer ID and brand (Emirates) from the ticket_details table.
select customer_id, first_name, last_name, brand
from ticket_details
join customer using(customer_id)
where brand = 'Emirates';

-- Write a query to identify the customers who have travelled by Economy Plus class using Group By and Having clause on the passengers_on_flights table.
select customer_id, first_name, last_name, class_id
from ticket_details
join customer using(customer_id)
where class_id = 'Economy Plus';

-- Write a query to identify whether the revenue has crossed 10000 using the IF clause on the ticket_details table. mmm
SELECT if(sum(price_per_ticket * no_of_tickets) > 10000, 'crossed', 'not crossed') as crossed_10k
FROM ticket_details;


-- Write a query to find the maximum ticket price for each class using window functions on the ticket_details table
SELECT class_id, max(price_per_ticket) as  maximum_ticket_price
FROM ticket_details
group by class_id;

-- Write a query to extract the passengers whose route ID is 4 by improving the speed and performance of the passengers_on_flights table.
-- For the route ID 4, write a query to view the execution plan of the passengers_on_flights table.
SELECT customer_id, first_name, last_name, route_id
FROM passengers_on_flights
join customer using(customer_id)
where route_id = 4;

drop view route_4;
create view route_4 as
select customer_Id,concat(first_name, ' ', last_name ) as full_name, route_id
from customer
join passengers_on_flights USING(customer_Id)
join routes USING(route_Id)
where route_id = 4;

-- Write a query to calculate the total price of all tickets booked by a customer across different aircraft IDs using rollup function.
select aircraft_id, sum(Price_per_ticket) as totalprice
from ticket_details
GROUP BY aircraft_id with rollup;

-- Write a query to create a view with only business class customers along with the brand of airlines.
drop view only_business_class;
create view only_business_class as
select customer_id, first_name, last_name, p.class_id, brand
from passengers_on_flights p
join customer c using(customer_id)
join ticket_details t using(customer_id)
where p.class_id = 'bussiness'
order by customer_id;

-- Write a query to create a stored procedure to get the details of all passengers flying between a range of routes defined in run time. Also, return an error message if the table doesn't exist.
drop procedure passenger_details_by_route_range;
delimiter $$
create procedure passenger_details_by_route_range(IN start_route_id INT, IN end_route_id INT)
BEGIN
select customer_id, first_name, last_name, gender, class_id, r.flight_num, r.route_id
from customer
join passengers_on_flights p using(customer_id)
join routes r using(route_id)
where r.route_id between start_route_id and end_route_id;
END $$
delimiter ;

-- Write a query to create a stored procedure that extracts all the details from the routes table where the travelled distance is more than 2000 miles.
drop procedure routes_distance_over_2000;
delimiter $$
create procedure routes_distance_over_2000()
BEGIN
select *
from routes
where distance_miles > 2000;
END $$
delimiter ;

-- Write a query to create a stored procedure that groups the distance travelled by each flight into three categories. The categories are, 
-- short distance travel (SDT) for >=0 AND <= 2000 miles, intermediate distance travel (IDT) for >2000 AND <=6500, and long-distance travel (LDT) for >6500.
drop procedure routes_distance_categories;
delimiter $$
create procedure routes_distance_categories()
BEGIN
select
    flight_num,
    CASE
        when MAX(distance_miles) <= 2000 then 'SDT'
        when MAX(distance_miles) > 2000 and MAX(distance_miles) <= 6500 then 'IDT'
        else 'LDT'
    END AS float_txt
from routes
group by flight_num;
END $$
delimiter ;

-- Write a query to extract ticket purchase date, customer ID, class ID and specify if the complimentary services are provided for the specific class using a stored function in stored procedure on the ticket_details table.
-- Condition: If the class is Business and Economy Plus, then complimentary services are given as Yes, else it is No 20.
select p_date, customer_id, class_id, 
		CASE
			when class_id in ("Business","Economy Plus") then "yes"
            else "No.20"
		END as "complimentary_services"
from ticket_details;

-- Write a query to extract the first record of the customer whose last name ends with Scott using a cursor from the customer table.
select * 
from customer
where last_name regexp 'scott'
order by customer_id asc
limit 1;
