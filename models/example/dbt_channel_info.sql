{{config(materialized='table')}}

-- models/page_views_total.sql

WITH total_view_count AS (
    SELECT
        SUM(viewcount) AS total_views
    FROM
      `dbt_sprinkle_channel_info`
)

SELECT
    *
FROM
   total_view_count

