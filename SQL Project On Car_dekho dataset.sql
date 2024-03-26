SELECT * FROM saidb1.`car dekho`;
use saidb1;
-- PROJECT ON CAR DEKHO DATASET--

-- 1) TOTAL CARS TO GET A COUNT OF TOTAL RECORDS--
select count(*) from `car dekho`;

-- 2) THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023?--
select count(*) from`car dekho`where year=2023;

-- 3) THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2020,2021,2022?--
select count(*) from`car dekho`where year=2020; #74
select count(*) from`car dekho`where year=2021; #7
select count(*) from`car dekho`where year=2022; #7
 -- USING GROUP BY --
 select count(*) from`car dekho`where year in (2020,2021,2022) group by year;
 
 -- 4) CLIENT ASKED ME TO PRINT THE TOTAL OF ALL CARS BY YEAR, I DONT SEE ALL THE DETAILS  --
 select year, count(*) from`car dekho` group by year; 
 
 -- 5) CLIENT ASKED TO CAR DEALER AGENT HOW MANY DIESEL CARS WILL THERE BE IN 2020 ? --
 select fuel, year, count(*) from`car dekho` where fuel = 'Diesel'and  year = 2020;  #20
 
 -- 6) CLIENT REQUEESTED A CAR DEALER AGENT HOW MANY PETROL CARS WILL THERE BE IN 2020? --
 select fuel, year, count(*) from`car dekho` where fuel = 'PETROL'and  year = 2020;  #51
 
 -- 7) THE TOLD THE EMPLOYEE TO GIVE A PRINT ALL THE FUEL CARS (PETROLS, DIESEL AND CNG) COME BY ALL YEAR --
SELECT fuel,year,count(*)as cars_count from `car dekho` where fuel ='Petrol' group by year;
SELECT fuel,year,count(*)as cars_count from `car dekho` where fuel ='diesel' group by year;
SELECT fuel,year,count(*)as cars_count from `car dekho` where fuel ='cng' group by year;

-- 8) MANAGER SAID THERE WERE MORE THAN 100 CARS INNA GIVEN YEAR, WHICH YEAR HAD MORE THAN 100 CARS ? --
SELECT year,count(*)as cars_count from `car dekho` group by year having count(*)>100; #year 2006 to 2019

-- 9) MANAGER SAID THE EMPLOYEE ALL CARS COUNT DETAILS BETWEEN YEAR 2015 AND 2023; WE NEED A COMPLETE LIST --
SELECT  count(*) from `car dekho` where year between 2015 and 2023;  #4124 CARS

-- 10) MANAGER SAID TO THE EMPLOYEE ALL CARS DETAILS BETWEEN 2015 AND 2023, WE NEED A COMPLETE LIST --
SELECT*  from `car dekho` where year between 2015 and 2023;

-- END --
-- THANK YOU --