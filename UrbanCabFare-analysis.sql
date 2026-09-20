select * from postgrespg


-- Total revenue
select sum("Final_Fare") as total_revenue
from postgrespg;

-- Average Fare
select avg("Final_Fare") as Avg_fare
from postgrespg;

-- Revenue by vehicle
select 
	"Type_of_vehicle",
	sum("Final_Fare") as total_revenue
from postgrespg
group by "Type_of_vehicle"
order by total_revenue desc;

-- Peak hours
SELECT
    "Hour_of_Day",
    COUNT(*) AS total_rides
FROM postgrespg
GROUP BY "Hour_of_Day"
ORDER BY total_rides DESC;

-- Top Cities
SELECT
    "City",
    COUNT(*) AS total_rides
FROM postgrespg
GROUP BY "City"
ORDER BY total_rides DESC
LIMIT 10;

-- Average Fare by Vehicle
SELECT
    "Type_of_vehicle",
    AVG("Final_Fare") AS avg_fare
FROM postgrespg
GROUP BY "Type_of_vehicle"
ORDER BY avg_fare DESC;

-- Average Fare by Vehicle
SELECT
    "Type_of_vehicle",
    AVG("Final_Fare") AS avg_fare
FROM postgrespg
GROUP BY "Type_of_vehicle"
ORDER BY avg_fare DESC;

-- Revenue by Fare Category
SELECT
    CASE
        WHEN "Final_Fare" < 200 THEN 'Low'
        WHEN "Final_Fare" < 500 THEN 'Medium'
        ELSE 'High'
    END AS fare_category,
    COUNT(*) AS total_rides,
    SUM("Final_Fare") AS total_revenue
FROM postgrespg
GROUP BY fare_category
ORDER BY total_revenue DESC;

-- City Revenue Ranking
WITH city_revenue AS (
    SELECT
        "City",
        SUM("Final_Fare") AS total_revenue
    FROM postgrespg
    GROUP BY "City"
)
SELECT
    "City",
    total_revenue
FROM city_revenue
ORDER BY total_revenue DESC;