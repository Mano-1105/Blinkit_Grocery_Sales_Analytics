-- Use blinkit_grocery 
Select * from grocery_data limit 10;

-- Check data summary

select
    count(*) AS total_records,
    count(distinct item_identifier) As unique_items,
    count(distinct outlet_identifier) As unique_outlets
from grocery_data;

-- Analyze sales by item type

select
      item_type,
      avg(sales) As avg_sales,
      sum(sales) As total_sales,
      count(*) As item_count
from grocery_data
group by item_type
order by total_sales desc;

-- Analyze sales by outlet type

Select 
     outlet_type,
     avg(sales) As avg_sales,
     sum(sales) As total_sales
from grocery_data
group by outlet_type
order by total_sales desc;

-- Analyze sales by outlet location type

select
      outlet_location_type,
      avg(sales) As avg_sales,
      sum(sales) As total_sales
from grocery_data
group by outlet_location_type
order by total_sales desc;

-- Analyze sales by fat content

select 
     item_fat_content,
     avg(sales) As avg_sales,
	sum(sales) As total_sales
from grocery_data
group by item_fat_content
order by total_sales desc;
     