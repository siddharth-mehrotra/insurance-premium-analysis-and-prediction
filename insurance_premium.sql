-- average premium by region
SELECT region, ROUND(AVG(expenses),0) AS av_premium
FROM premium
GROUP BY region
ORDER BY av_premium DESC;

-- insured people by region
SELECT region, COUNT(*) AS total_insured
FROM premium
GROUP BY region
ORDER BY total_insured;

-- average premium for smokers and non- smokers
SELECT smoker, ROUND(AVG(expenses),0) AS premium
FROM premium
GROUP BY smoker;

-- expenses based on children
SELECT children, ROUND(AVG(expenses),0) AS premium
FROM premium
GROUP BY children
ORDER BY premium DESC;

-- expenses based on children
SELECT sex, ROUND(AVG(expenses),0) AS premium
FROM premium
GROUP BY sex;

-- premium paid based on bmi
SELECT bmi_category, ROUND(AVG(expenses),0) AS premium
FROM premium
GROUP BY bmi_category
ORDER BY premium DESC;

