{{config(materialized='table')}}

-- models/page_views_total.sql

WITH total_view_count AS (
    SELECT
        SUM(viewcount) AS total_views
    FROM
       `airbyte_testing.dbt_sprinkle_channel_info`
)

SELECT
    *
FROM
   `airbyte_testing.dbt_sprinkle_channel_info`

