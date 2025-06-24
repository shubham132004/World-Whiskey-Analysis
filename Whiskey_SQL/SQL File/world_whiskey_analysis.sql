######## WORLD WHISKEY ANALYSIS ########

## CREATING DATABASE 
CREATE DATABASE world_whiskey_analysis;

use world_whiskey_analysis;

## CREATING TABLE whiskey

CREATE TABLE whiskey
(
brand varchar(255) , 
varieties varchar(255) , 
type varchar(255) , 
centiliter int ,
year varchar(255) , 
abv_percent int , 
abv_category varchar(255) ,
price_rupees int , 
mili_liter int ,
country varchar(255)
);




SELECT * FROM whiskey;
###############################################################################################################################################
## 1. Rank whiskies within each country based on price (Top 5 highest first) 
SELECT 
    brand, 
    country, 
    price_rupees
FROM (
    SELECT 
        brand,
        country,
        price_rupees,
        DENSE_RANK() OVER (
            PARTITION BY country 
            ORDER BY price_rupees DESC
        ) AS price_rank_country
    FROM 
        whiskey
) AS ranked_whiskey
WHERE 
    price_rank_country = 1
    ORDER BY price_rupees DESC
    LIMIT 5;

## 2. Retrieve all whiskies with an ABV greater than 50%.
SELECT brand , abv_percent
FROM whiskey 
WHERE abv_percent > 50;

## 3. Calculate running total of whisky prices by brand
SELECT brand ,
price_rupees , 
SUM(price_rupees) OVER(PARTITION BY brand ORDER BY price_rupees DESC) running_total
FROM whiskey;

## 4. Count the number of whiskies for each brand.
SELECT brand , COUNT(*) as Number_of_whiskeys
FROM whiskey 
GROUP BY brand;

## 5. Show each whisky along with the average ABV of its type
SELECT type , 
AVG(abv_percent) as avg_abv
FROM
whiskey
GROUP BY type
ORDER BY avg_abv DESC;

## 6. Find the difference in price between each whisky and the previous one (by brand)
SELECT brand , 
price_rupees , 
LAG(price_rupees) OVER(PARTITION BY brand ORDER BY price_rupees ) previous_one , 
price_rupees - LAG(price_rupees) OVER(PARTITION BY brand ORDER BY price_rupees) price_diff
FROM 
whiskey;

## 7. For each type, show the whisky with the highest ABV in each country

WITH RankedWhiskies AS (
    SELECT 
        brand,
        type,
        country,
        abv_percent,
        DENSE_RANK() OVER (
            PARTITION BY type, country 
            ORDER BY abv_percent DESC
        ) AS abv_rank
    FROM 
        whiskey
)
SELECT 
    type,
    COUNT(*) AS top_whiskies_count
FROM 
    RankedWhiskies
WHERE 
    abv_rank = 1
GROUP BY 
    type
ORDER BY top_whiskies_count DESC;

###############################################################################################################################################
