{{ config(
 title='Season',
 type='select_filter',
 output_filters={'dropdown': 'season'},
 persist_filters=false,
  default_value='2015'
)}}
 
SELECT distinct season
FROM `topcoat-internal.dbt_kmasters.teams_games`
ORDER BY 1
 
{{ column(
 name='season',
 tags=['options','labels']
)}} 