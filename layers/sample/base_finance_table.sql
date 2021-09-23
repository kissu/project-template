{{ config(
    type='table', 
    dimensions=[1],
    pagesize=7,
    title='Finance Table',
    sortable=true,
    searchable=true,
    download_csv=true
)}}

SELECT department, year, total, target_total
FROM {{ref('seed_financial_data')}}
WHERE 1=1
{% if filter('exclude_marketing_filter') == 'true' %}
AND department != 'Marketing'
{% endif %}
AND CAST(year AS STRING) = CAST({{filter('year')}} AS STRING)
{% if filter('department_search') != '' %}
AND department LIKE '%{{ filter('department_search') }}%'
{% endif %}

{{ column(
    name='total',
    value_format='${:,d}'
)}}