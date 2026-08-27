# SQL | Power BI | Data Analysis Project - Florida Retail Shops Sales Analysis
## Project Overview
In this project, we link sales data of 4 Florida Retail Shops spanning over 2 years (2023 and 2024) with customer demographics (gender, household type) and weather
data (temperature, rainfall, humidity) to identify correlations that impact sales trends like seasonality, weekend lift in sales, rainfall and temperature
effects and so on.
The workflow involves building an SQL database using data from .csv files. We create/import three tables in SQL: _sales_, _survey_ (having customer demographics) 
and _weather_. We then create additional dimensions and measures for analysis and join the three tables into a single SQL VIEW, which we import to Power BI for further analysis, dashboarding and deeper insights.
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
  * _sales_per_customer (daily sales per customer)
* Finally, joining the tables using _left join_ for a consolidated View.
## Power BI Analysis and Visualizations
* Import the SQL View from SQL Database into Power BI.
* 
## Insights
## Recommendations
* Sales are shaped by weather, location and customer mix. To maximize growth, managers must adapt operations to seasonal shifts and customer patterns.
* Increase Staff and Stock on **hot summer days**.
* Run **rainy-day discounts** to keep traffic steady.
* Expand **Miami** in **peak tourism months**.
* Build **loyalty** in **Jacksonville**.
* Target **families on weekends** and **singles on weekdays**.

