create or replace view retail.joined_tables as 
select 
s.date, 
-- day of week 
dayname(s.date) as day_of_week, 
-- weekend or not 
case when weekday(s.date) in (5,6) then 'Weekend' else 'Weekday' 
end as is_weekend, 
s.shop_id, 
s.shop_name, 
s.customers, 
s.sales_usd, 
-- sales per customer 
round(s.sales_usd / s.customers,2) as sales_per_customer, 
su.pct_male, 
su.pct_female, 
su.pct_family, 
su.pct_single, 
w.avg_temp_f, 
w.precip_in, 
w.is_rain, 
w.humidity_pct  
from retail.sales s
left join retail.survey su on 
s.date = su.date 
left join retail.weather w on 
su.date = w.date;
