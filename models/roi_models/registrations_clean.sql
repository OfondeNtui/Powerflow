SELECT
    *
FROM {{ source('powerflow', 'registrations') }}   
WHERE user_id IS NOT NULL 