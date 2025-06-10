SELECT
    g.device_id,
    g.attribution_time,
    'google_adds' AS channel,
    g.campaign AS campaign_id,
    c.cost AS attribution_cost
FROM {{ source('powerflow', 'google_adds') }} AS g
LEFT JOIN {{ ref('campaign_costs') }} AS c
    ON g.campaign = c.campaign_id