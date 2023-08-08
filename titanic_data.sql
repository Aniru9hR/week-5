--total number of rows
SELECT count(*) FROM titanic_dataset
-- 887

-- Total number of passengers survived 
SELECT SUM(CAST(survived AS INTEGER)) AS total_survived FROM titanic_dataset
--342

--Passenger class with largest population
SELECT pclass, count(pclass)AS total_passenger FROM titanic_dataset GROUP BY pclass ORDER BY total_passenger DESC
--3 - 	487