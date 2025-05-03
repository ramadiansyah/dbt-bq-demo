SELECT
    id AS order_item_id,
    order_id,
    product_id,
    quantity,
    price
FROM {{ source('raw_ecommerce', 'order_items') }}