WITH sales AS (
    SELECT 
        sales_id,
        product_sk,
        customer_sk,
        gross_amount,
        {{ multiply('unit_price', 'quantity') }} AS total_gross_amount,
        payment_method
    FROM {{ ref('bronze_sales') }}
),

products AS (
    SELECT 
        product_sk,
        category
    FROM {{ ref('bronze_product') }}
),

customers AS (
    SELECT 
        customer_sk, 
        gender
    FROM {{ ref('bronze_customer') }}
),

joined_query AS (

    SELECT 
        s.sales_id,
        s.gross_amount,
        s.customer_sk,
        p.category,
        c.gender
    FROM sales s
    JOIN products p 
        ON s.product_sk = p.product_sk
    JOIN customers c 
        ON s.customer_sk = c.customer_sk

)

SELECT
    category,
    gender,
    SUM(gross_amount) AS total_sales
FROM joined_query
GROUP BY 
    category, 
    gender
ORDER BY
    total_sales DESC


