--1. Display all properties in the database.
select * from "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"


---2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.

Select CITY, PROVINCE, PROPERTY_PRICE 
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"

--3. List all distinct provinces in the table.

SELECT DISTINCT PROVINCE FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"

--4. Find all properties located in Gauteng.

SELECT * 
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROVINCE='Gauteng'

--5. Show properties priced under R1,500,000.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROPERTY_PRICE<15000000

--6. List properties with more than 3 bedrooms.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE BEDROOMS>3

--7. Find properties with parking for at least 2 cars.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PARKING>=2

--8. Show properties where the monthly repayment is greater than R25,000.
SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE MONTHLY_REPAYMENT>25000

--9. Show all properties ordered by property price from highest to lowest.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY  PROPERTY_PRICE DESC;

--10. List properties ordered by floor size from smallest to largest.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY FLOOR_SIZE ASC;


--11. Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROVINCE='Gauteng'
ORDER BY MONTHLY_REPAYMENT

--12. Find Western Cape properties priced below R3,000,000.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROVINCE='Western Cape' and PROPERTY_PRICE<3000000

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROVINCE='KwaZulu-Natal' and BEDROOMS>=3


--14. Find properties in Limpopo or Free State ordered by property price.

SELECT *
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROVINCE IN ('Limpopo', 'Free State')
ORDER BY PROPERTY_PRICE ASC;

--15. Show the 10 most expensive properties.

SELECT TOP 10*
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY PROPERTY_PRICE DESC;

--16. Show the 5 cheapest properties.

SELECT TOP 5*
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY PROPERTY_PRICE ASC;

--17. Show the top 10 properties with the largest floor size.

SELECT TOP 10*
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY FLOOR_SIZE DESC;

--18. Which province appears to have the highest priced properties?

SELECT TOP 1 PROVINCE, MAX(PROPERTY_PRICE) AS highest_price
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
GROUP BY PROVINCE
ORDER BY  highest_price DESC;

--19. Which cities appear to have the most affordable housing?

SELECT CITY, PROVINCE, PROPERTY_PRICE
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
ORDER BY PROPERTY_PRICE ASC;

--20. What minimum income is typically required for properties priced above R4,000,000?

SELECT TOP 1*
FROM "PROJECT_24"."PUBLIC"."HOUSING_PROJECT"
WHERE PROPERTY_PRICE>4000000
ORDER BY MIN_GROSS_MONTHLY_INCOME ASC;
