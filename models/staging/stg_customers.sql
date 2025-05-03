SELECT
    id AS customer_id,
    name,
    email,
    created_at
FROM {{ source('raw_ecommerce', 'customers') }}