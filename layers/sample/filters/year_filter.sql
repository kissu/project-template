  {{ config(
 title='Year',
 type='select_filter',
 output_filters={'dropdown': 'year'},
 persist_filters=true
)}}
 
SELECT distinct year
FROM {{ ref('seed_financial_data')}}
ORDER BY 1
 
{{ column(
 name='year',
 tags=['options','labels']
)}} 