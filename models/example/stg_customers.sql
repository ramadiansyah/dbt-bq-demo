WITH stg_customers AS (
    SELECT * FROM `purwadika.chinook_source.source_customers` LIMIT 1000
)

SELECT * FROM stg_customers