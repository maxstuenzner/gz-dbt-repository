SELECT
  f.date_date as date,
  ROUND(f.operational_margin - i.ads_cost) as ads_margin,
  f.average_basket,
  f.operational_margin,
  i.ads_cost,
  i.ads_impressions,
  i.ads_click,
  f.quantity,
  f.revenue,
  f.purchase_cost,
  f.margin,
  f.shipping_fee,
  f.log_cost,
  f.ship_cost
FROM {{ ref('finance_days') }} f
LEFT JOIN {{ ref('int_campaigns_day') }} i
  ON f.date_date = i.date_date
  