/*
================================================
Quality checks
================================================

Usage:
To be run once the silver layer is loaded
*/


-- checking for uniqueness in customer key
select customer_key, count(*) as duplicate_count
from gold.dim_customers
group by customer_key
having count(*) > 1



-- checking for uniqueness in product key
select product_key, count(*) as duplicate_count
from gold.dim_products
group by product_key
having count(*) > 1



-- checking foreign key integrity
select * from gold.fact_sales f
left join gold.dim_customers c
on c.customer_key = f.customer_key
left join gold.dim_products p 
on p.product_key = f.product_key 
where c.customer_key is null;

