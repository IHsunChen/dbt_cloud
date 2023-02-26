select 
    {{ get_payment_type_description('payment_type')}} as get_payment_type_description,
    congestion_surcharge
from {{ source('staging', 'green_tripdata') }}
where VendorID is not null