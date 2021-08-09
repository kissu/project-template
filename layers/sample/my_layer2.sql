{{ config(
	type='line_chart', 
	dimensions=[1],
    pagesize=7,
	title='Example 2',
)}}

SELECT 'Marketing' AS department, 123232 as total
UNION ALL
SELECT 'Sales' AS department, 65342 as total
UNION ALL
SELECT 'Revenue' AS department, 990239 as total
