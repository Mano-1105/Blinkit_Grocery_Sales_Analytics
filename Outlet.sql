use blinkit_grocery;

select 
    outlet_identifier,
    outlet_type,
    outlet_location_type,
    SUM(sales) AS total_sales,
    AVG(rating) AS avg_rating
from grocery_data
GROUP BY outlet_identifier, outlet_type, outlet_location_type
ORDER BY total_sales desc
LIMIT 10;

-- Analyze Sales trends over years

select
    outlet_establishment_year,
    avg(sales) AS avg_sales,
    COUNT(distinct outlet_identifier) AS outlet_count
From grocery_data
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year;

-- Find correlation between item weight and sales

select
    case 
        When item_weight < 10 Then 'Light'
        When item_weight between 10 AND 15 Then'Medium'
        Else 'Heavy'
    end AS weight_category,
    Avg (sales) AS avg_sales,
    COUNT(*) AS item_count
From grocery_data
GROUP BY weight_category
ORDER BY avg_sales desc;