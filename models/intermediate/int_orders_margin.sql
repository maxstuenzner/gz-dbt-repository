select 
orders_id,
date_date,
ROUND(SUM(revenue), 2) as revenue,
SUM(quantity) as quantity,
ROUND(SUM(purchase_cost), 2) as purchase_cost,
ROUND(SUM(margin), 2) as margin
from {{ ref('int_sales_margin') }}

GROUP by
orders_id,
date_date

