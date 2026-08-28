# SQL | Power BI | Data Analysis Project - Florida Retail Shops Sales Analysis
## Project Overview
In this project, we link sales data of 4 Florida Retail Shops spanning over 2 years (2023 and 2024) with customer demographics (gender, household type) and weather
data (temperature, rainfall, humidity) to identify correlations that impact sales trends like seasonality, weekend lift in sales, rainfall and temperature
effects and so on.
The workflow involves building an SQL database using data from .csv files. We create/import three tables in SQL: _sales_, _survey_ (having customer demographics) 
and _weather_. We then create additional dimensions and measures for analysis and join the three tables into a single SQL VIEW, which we import into Power BI for further analysis, dashboarding and deeper insights.
## Business Context
* There are 4 Retail Shops in Florida: Miami, Orlando, Tampa and Jacksonville.
* Sales are strongly influenced by weather patterns.
* Management wants to understand drivers for customer demand.
## Problem Statement
* Daily sales fluctuate but Leadership lacks clarity on why; understanding how weather and customer demographics impact performance will provide insights to improve
  planning, staffing and promotions.
* Goal: Provide insights to improve planning, staffing and promotions.
## Client Expectations
* Clear picture of how weather drives customer demand.
  * How strongly do temperature and rainfall affect daily sales?
  * Are there predictable seasonal patterns in sales?
* Insights on family vs. single, male vs. female shopping patterns.
  * Who are our customers and how does it change over time?
* Shop-level comparisons to guide staffing and inventory decisions.
  * Which shop performs best and why?
* Dashboard that allows ongoing monitoring of trends.
* What actions would you take based on these insights?
## SQL Analysis
* Data import:
  * Prepare .csv files.
  * Create a new SQL database or use an existing database.
  * Import .csv files into SQL database as _tables_. 
* Data Description:
  * _sales_ table: We have daily sales data for 4 shops spanning 2 years.
    * Fields: _date_, _shop_id_, _shop_name_, _customers_ (no. of customers), _sales_usd_
  * _survey_ table: Has daily data of customer demographics (% of males, % of females, % of singles and % of customers with family who visited the shops).
    * Fields: _date_, _pct_male_, _pct_female_, _pct_single_, _pct_family_
  * _weather_ table: Has daily weather data.
    * Fields: _date_, _avg_temp_, _precip_in_, _humidity_pct_, _is_rain_ (1 for rain, 0 for no rain)
* Additional fields and measures created:
  * _day_of_week_ (to understand weekday and weekend sales trends)
  * _is_weekend_ (Weekend/Weekday)
  * _sales_per_customer (average daily sales per customer)
* Finally, joining the tables using _left join_ for a consolidated View.
## Power BI Analysis and Visualizations
* Import the View from the SQL Database into Power BI.
* Sales Performance Overview
  * The dashboard opens with high‑level KPIs summarizing business performance:
    * Revenue: $11.87M
    * Customers: 698K
    * Revenue per Customer: $17
  * We use DAX to calculate current and previous month's sales and month-over-month sales growth.
  * A Month‑over‑Month (MoM) Sales Growth chart visualizes sales fluctuations across 2023–2024. The accompanying table shows monthly sales, previous month comparisons, and MoM growth percentages. For example, June 2023 shows a strong 15.90% MoM growth, while February 2023 dips by –11.08%.
* Shop‑wise Revenue Contribution
  * A Donut chart highlights revenue distribution across four major locations:
    * Miami Beach: 32%
    * Orlando: 26%
    * Tampa: 23%
    * Jacksonville: 19%
* Customer Demographics
  * Multiple visuals break down customers by gender and household type across cities.
  * We also breakdown customer revenue contribution based on these demographics.
* Seasonality Trends
  * A seasonal trend chart shows monthly sales patterns, highlighting growth periods and peak seasons. Sales per customer also fluctuates slightly across months.
  * Rainy vs Non‑Rainy Day Sales: A simple visual shows that 70% of sales occur on rainy days, compared to 30% on non‑rainy days.
  * We also analyse customer traffic seasonality, breaking it down by gender and household type.
  * Weekday vs Weekend Performance
    * Revenue and foot traffic are plotted across all seven days.
    * Weekends show noticeable lifts in both sales and customer visits, with Saturday and Sunday outperforming weekdays.
  * The dashboard also has slicers to filter the visuals based on Year, Shop Name and Rainy/Non-Rainy days.
* Weather Analysis Dashboard
  * This section correlates daily foot traffic and sales with weather variables to study the impact of weather on customer demand and behaviour.
    * Temperature vs Sales
    * Precipitation vs Foot Traffic
    * Humidity vs Foot Traffic
    * Rainfall vs. daily sales
  * The dashboard has slicers to filter the visuals based on Year, Shop Name and Weekend/Weekday. 
## Insights
* Seasonal Patterns in sales:
  * Sales rise steadily from March onwards and peak in August due to summer tourism.
  * The MOM sales growth spikes in June and July of both 2023 and 2024 indicating seasonal demand or promotional periods.
  * Weekends show more customer visits as well as generate more sales than the rest of the week. Wednesdays and Thursdays are the lowest in foot traffic.
  * Male customer visits peak from March through May.
  * Female customer visits peak from July through September. We also see highest visits from both household types in this period.
  * Rainy days account for 70% of total sales.
* Shop Performance and Customer Demography:
* Impact of weather variables:
## Recommendations
* Sales are shaped by weather, location and customer mix. To maximize growth, managers must adapt operations to seasonal shifts and customer patterns.
* Increase Staff and Stock on **hot summer days**.
* Run **rainy-day discounts** to keep traffic steady.
* Expand **Miami** in **peak tourism months**.
* Build **loyalty** in **Jacksonville**.
* Target **families on weekends** and **singles on weekdays**.

