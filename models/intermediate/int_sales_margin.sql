SELECT 
  s.*,
  p.purchase_price,
  ROUND((s.quantity * p.purchase_price), 2) AS purchase_cost,
  ROUND((s.revenue - (s.quantity * p.purchase_price)), 2) AS margin
FROM 
  {{ ref('stg_raw__product') }} AS p
JOIN
  {{ ref('stg_raw__sales') }} AS s
  ON p.products_id = s.products_id