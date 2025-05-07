select

date_date,
ROUND(SUM(ads_cost),2) as ads_cost,
ROUND(SUM(impression),2) as ads_impressions,
ROUND(SUM(click),2) as ads_click

from
{{ ref('int_campaigns') }}

group by date_date
order by date_date desc