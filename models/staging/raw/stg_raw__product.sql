with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        Cast(purchse_price AS FLOAT64) as purchase_price

    from source

)

select * from renamed
