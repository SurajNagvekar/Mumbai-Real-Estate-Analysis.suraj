-- analysis--

-- avg price by loc--
SELECT locality, ROUND(AVG(price),0) AS avg_price
FROM housing
GROUP BY locality
ORDER BY avg_price DESC
LIMIT 10;

-- avg price per sqft--
SELECT locality, ROUND(AVG(price_per_sqft),0) AS avg_sqft
FROM housing
GROUP BY locality
ORDER BY avg_sqft ASC
LIMIT 10;

-- most bhks cleaned for all --
SELECT bedroom_num, COUNT(*) AS total
FROM housing
WHERE bedroom_num IS NOT NULL
GROUP BY bedroom_num
ORDER BY total DESC;

-- premium vs budget areas--
SELECT locality, ROUND(AVG(price),0) AS avg_price
FROM housing
WHERE price IS NOT NULL
GROUP BY locality
ORDER BY avg_price DESC
LIMIT 10;


-- avg pricee vs area mumbai --
SELECT 
    ROUND(AVG(area),0) AS avg_area,
    ROUND(AVG(price),0) AS avg_price
FROM housing;



-- value areas per sqft--
SELECT locality, ROUND(AVG(price_per_sqft),0) AS avg_sqft_price
FROM housing
WHERE price_per_sqft IS NOT NULL
GROUP BY locality
ORDER BY avg_sqft_price asc
LIMIT 20;


-- property type --
SELECT property_type, COUNT(*) AS total
FROM housing
GROUP BY property_type
ORDER BY total DESC;


SELECT 
    MIN(price), 
    MAX(price), 
    AVG(price)
FROM housing
WHERE price IS NOT NULL;