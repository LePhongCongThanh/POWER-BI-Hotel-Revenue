
WITH CTE_UNION as ( 
	SELECT *
	FROM Project.dbo.['2018$']
	UNION
	SELECT * 
	FROM Project.dbo.['2019$']
	UNION
	SELECT * 
	FROM Project.dbo.['2020$']
)
SELECT arrival_date_year, hotel,
SUM((stays_in_week_nights + stays_in_weekend_nights) * adr) as Revenue
FROM CTE_UNION
GROUP BY arrival_date_year, hotel

WITH CTE_UNION as ( 
	SELECT *
	FROM Project.dbo.['2018$']
	UNION
	SELECT * 
	FROM Project.dbo.['2019$']
	UNION
	SELECT * 
	FROM Project.dbo.['2020$']
)
SELECT *
FROM CTE_UNION as u
LEFT JOIN Project.dbo.market_segment$ as market
	ON u.market_segment = market.market_segment
LEFT JOIN Project.dbo.meal_cost$ as meal
	ON meal.meal = u.meal



