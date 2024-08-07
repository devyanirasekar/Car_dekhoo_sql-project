#SOLVING THE QUERYS ON CAR_DEKHOP PROJECT
use car_dekhop;
#1. read car data
select * from car_dekhoo;

#2. Total Cars: to get a count of total records.
SELECT COUNT(Name) AS total_cars
FROM car_dekhoo;

#3. Manager asked the employee how many cars are going to be there in 2023.
SELECT count(year) as total_cars_2023
from car_dekhoo
where year = 2023;

#4. Manager asked the employee how many cars are available  in 2020,2021 and 2022.
select year , count(Name)
from car_dekhoo
where year in (2020 , 2021 , 2022)
group by year
order by year;

#5. Client suggested to print all the cars by year for clear analysis.
select Name
from car_dekhoo
order by year;

#6. Client asked to car dealer agent  how many diesel cars will be there in 2020?
select count(Name)
from car_dekhoo
where fuel = "Diesel" and year = 2020;

#7. Client requested the number how many petrol cars will be there in 2020?
select count(Name)
from car_dekhoo
where fuel = "Petrol" and year = 2020;

#8. Print all type of fuel cars (Petrol, Diesel and CNG) come by all year.
SELECT year, fuel, COUNT(Name) AS total_cars
FROM car_dekhoo
GROUP BY year, fuel
ORDER BY year;

#9. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT year
FROM car_dekhoo
GROUP BY year
HAVING COUNT(*) > 100;

#10.Manager asked employee to count all cars details between 2015 and 2023 in a list format.
select year , count(Name)
from car_dekhoo
where year between 2015 and 2023
group by year
order by year;

#11.Print all car details between 2015 and 2023.
select 	Name 
from car_dekhoo
where year between 2015 and 2023

