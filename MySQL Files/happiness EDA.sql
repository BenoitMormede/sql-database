USE happiness;

SHOW FULL TABLES;

SELECT * FROM governance;


SELECT h.RANK, h.happiness_score, h.country, g.governance_avg
FROM happiness_score AS h
INNER JOIN (
    SELECT country,
           ROUND((corruption + government_effectiveness + political_stability + regulatory_quality + rule_of_law + accountability) / 6, 2) AS governance_avg
    FROM governance
) AS g
ON h.country = g.country;

SELECT h.RANK, h.happiness_score, h.country, c.precipitation
FROM happiness_score AS h
INNER JOIN climate AS c
ON h.country = c.country;

SELECT h.RANK, h.happiness_score, h.country, he.life_expectancy
FROM happiness_score AS h
INNER JOIN health AS he
ON h.country = he.country;

SELECT h.RANK, h.happiness_score, h.country, s.average_working_hours, s.household_size, s.education
FROM happiness_score AS h
INNER JOIN social AS s
ON h.country = s.country;

SELECT h.RANK, h.happiness_score, h.country, e.gdp_per_capita, e.inflation, e.unemployment
FROM happiness_score AS h
INNER JOIN economics AS e
ON h.country = e.country;

SELECT h.RANK, h.happiness_score, h.country, s.household_size
FROM happiness_score AS h
INNER JOIN social AS s
ON h.country = s.country;

SELECT 
    h.RANK, 
    h.happiness_score, 
    h.country, 
    s.household_size, 
    e.gdp_per_capita 
FROM 
    happiness_score AS h
INNER JOIN 
    social AS s
    ON h.country = s.country
INNER JOIN 
    economics AS e  
    ON h.country = e.country;  