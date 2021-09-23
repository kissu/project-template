{{ config(
	type='donut_chart', 
	dimensions=[1],
	title='Spend Breakdown',
)}}

SELECT department, total
FROM {{ref('base_finance_table')}}