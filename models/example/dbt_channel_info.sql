{{config(materialized='table')}}

-- models/page_views_total.sql

WITH total_view_count AS (
    SELECT
        channnelid,SUM(viewcount)AS total_views, subscriber, pusblishedat, updated_at 
    FROM
      sprinkle_channel_info
)

SELECT
    *
FROM
   total_view_count

