SELECT
  FORMAT_DATE('%Y-%m', date) AS date_month,
  ROUND(SUM(ads_margin), 2) AS ads_margin,
  ROUND(AVG(average_basket), 2) AS average_basket,
  SUM(operational_margin) AS operational_margin,
  SUM(ads_cost) AS ads_cost,
  SUM(ads_impressions) AS ads_impressions,
  SUM(ads_click) AS ads_click,
  SUM(quantity) AS quantity,
  SUM(revenue) AS revenue,
  SUM(purchase_cost) AS purchase_cost,
  SUM(margin) AS margin,
  SUM(shipping_fee) AS shipping_fee,
  SUM(log_cost) AS log_cost,
  SUM(ship_cost) AS ship_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY date_month
ORDER BY date_month DESC
