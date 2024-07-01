with stg_products_food AS (
  SELECT product_name,
  product_id,
  price,
  expiration_date,
  category
  FROM dbt_test.Products
)

select * from stg_products_food where stg_products_food.category = 'food'