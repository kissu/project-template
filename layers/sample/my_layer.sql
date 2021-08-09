{{ config(
    type='table', 
    dimensions=[1],
    pagesize=7,
    title='Example 1',
    sortable=true,
    searchable=true,
    download_csv=true
)}}

SELECT 'Marketing' AS department, 123232 as total
UNION ALL
SELECT 'Sales' AS department, 65342 as total
UNION ALL
SELECT 'Revenue' AS department, 990239 as total

{{ column(
    name='total',
    value_format='${:,d}'
)}}