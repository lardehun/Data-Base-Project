USE CarDatabase;

SELECT visiting.Name,shops.Owner 
FROM visiting
INNER JOIN shops
ON visiting.ID = shops.ID;

SELECT type,color FROM cars
WHERE color = "Blue";
