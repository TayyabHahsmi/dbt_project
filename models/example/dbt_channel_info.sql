{{config(materialized='table')}}

-- models/page_views_total.sql

WITH total_view_count AS (
    SELECT
        SUM(viewcount) AS total_views
    FROM
       `Tayyab_dataset.dbt_sprinkle_channel_info`
)

SELECT
    sci.*,
    tvc.total_views
FROM
   `Tayyab_dataset.dbt_sprinkle_channel_info` sci
JOIN
    total_view_count tvc

