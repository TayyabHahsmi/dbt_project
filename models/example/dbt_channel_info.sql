{{config(materialized='table')}}

-- models/page_views_total.sql

WITH total_view_count AS (
    SELECT
        channelid,SUM(viewcount)AS total_views, subscriber, publishedat, updated_at 
    FROM
     `Tayyab_dataset.dbt_local_sprinkle_channel_info`
)

SELECT
    *
FROM
   total_view_count

