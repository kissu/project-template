{{ config(
	type='line_chart', 
	dimensions=[1],
    pagesize=7,
	title='Totals',
	line_type='linear'
)}}

SELECT department, sum(total) as total
FROM {{ref('base_finance_table')}}
GROUP BY 1

{{ column(
	name='year',
	value_format='{%Y}',
)}}