CREATE OR REPLACE TABLE
`virtual-muse-454819-q7.marketing_analytics.unified_ads` AS


SELECT
    'Facebook' AS platform,
    date,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    spend AS cost, 
    conversions
FROM `virtual-muse-454819-q7.marketing_analytics.facebook_ads`

UNION ALL


SELECT
    'Google' AS platform,
    date,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    cost,
    conversions
FROM `virtual-muse-454819-q7.marketing_analytics.google_ads`

UNION ALL


SELECT
    'TikTok' AS platform,
    date,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    cost,
    conversions
FROM `virtual-muse-454819-q7.marketing_analytics.tiktok_ads`;
