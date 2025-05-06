SELECT 
  joint.orders_id,
  joint.date_date,
  ROUND((joint.margin + s.shipping_fee - s.log_cost - s.ship_cost),2) as operational_margin

FROM 
  {{ ref('stg_raw__ship') }} AS s
JOIN
  {{ ref('int_orders_margin') }} AS joint
  ON joint.orders_id = s.orders_id