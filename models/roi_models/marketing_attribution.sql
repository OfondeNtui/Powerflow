SELECT 
    *
FROM {{ ref('stg_google_adds') }}
UNION
SELECT 
    *
FROM {{ source('powerflow', 'appsflyer_raw') }}