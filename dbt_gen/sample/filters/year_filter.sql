 
SELECT distinct year
FROM {{ ref('seed_financial_data') }}
ORDER BY 1
 
 