{{ config(
	type='bar_chart', 
	dimensions=[1],
	title='Total vs Target',
    bar_type='group',
    legend='show'
)}}

SELECT department, total, target_total
FROM {{ref('base_finance_table')}}