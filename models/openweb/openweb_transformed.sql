{{config(materialized='table')}}


WITH transformed_openweb (SELECT *,
  replace(substring(page_url from '.*://([^/]*)'), 'www.', '') AS url_domain
FROM
  new_openweb)

select * from trasnformed_openweb


