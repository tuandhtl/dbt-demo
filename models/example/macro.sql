-- Use the `ref` function to select from other models-

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    {{get_date_parts('Order_Date')}} as date_extract
FROM
    dbt_test.Orders o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    dbt_test.Products p ON o.Product_ID = p.Product_ID