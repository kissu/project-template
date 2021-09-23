 {{ config(
 title='Team Name',
 type='select_filter',
 output_filters={'dropdown': 'team_name'},
 persist_filters=false,
  default_value='49ers'
)}}
 
SELECT distinct team_name
FROM `topcoat-internal.dbt_kmasters.teams`
ORDER BY 1
 
{{ column(
 name='team_name',
 tags=['options','labels']
)}} 