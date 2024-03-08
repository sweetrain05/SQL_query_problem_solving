-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

select 
    s1.product_id, 
    s1.year as first_year, 
    s1.quantity, 
    s1.price 
from Sales s1
where (s1.product_id, s1.year) 
    in 
        (select 
            s2.product_id, 
            min(s2.year)
        from sales s2 
        group by s2.product_id)