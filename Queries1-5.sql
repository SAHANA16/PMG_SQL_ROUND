#Q1. Generate a query to get the sum of the clicks of the marketing data
SELECT SUM(clicks) FROM marketing_data;

#Q2. Generate a query to gather the sum of revenue by store_location from the store_revenue table 
SELECT store_location,SUM(revenue) 
FROM store_revenue 
GROUP BY store_location;

#Q3. Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for 
create table merged_data as
SELECT s.*,m.date as date2,m.geo,m.impressions,m.clicks
FROM store_revenue s 
Left OUTER JOIN marketing_data m  
on s.date=m.date and right(s.store_location,2)=m.geo
UNION
SELECT s.*,m.date as date2,m.geo,m.impressions,m.clicks
FROM store_revenue s 
RIGHT OUTER JOIN marketing_data m  
on s.date=m.date and right(s.store_location,2)=m.geo;
select * from merged_data;

#Q4. In your opinion, what is the most efficient store and why?
SELECT geo2 as geo, tot_impressions as impressions,
tot_clicks as clicks, 
round(tot_clicks*100/tot_impressions,3) as CTR, 
tot_revenue as revenue
FROM(
SELECT coalesce(geo,right(store_location,2)) as geo2,
sum(impressions) as tot_impressions,
sum(clicks) as tot_clicks,
sum(revenue) as tot_revenue
FROM merged_data
GROUP BY geo2) a;


#Q5. Generate a query to rank in order the top 10 revenue producing states 
SELECT RANK() OVER(ORDER BY revenue DESC) Rank_by_Revenue , store_location, revenue
FROM store_revenue
ORDER BY revenue DESC 
LIMIT 10;

#Q5. Generate a query to rank in order the top 10 revenue producing states
SELECT RANK() OVER(ORDER BY revenue DESC) Rank_by_Revenue , store_location, revenue
FROM store_revenue
ORDER BY revenue 
DESC LIMIT 10;

#Q5a. Generate a query to rank in order the top 10 revenue producing states
SELECT RANK() OVER(ORDER BY tot_revenue DESC) Rank_by_Revenue ,store_location,tot_revenue
FROM(
select store_location,sum(revenue) as tot_revenue
FROM store_revenue 
GROUP BY store_location 
ORDER BY tot_revenue DESC 
LIMIT 10)aa;