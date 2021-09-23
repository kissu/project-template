{{ config(
	type='line_chart', 
	dimensions=[1],
    measures=[2],
    x_axis= 'hide',
    x_labels= 'hide',
    y_axis= 'hide',
    y_labels= 'hide',
    legend= 'hide',
    margin= 'small'

)}}

SELECT scheduled_date, field_goals_att, field_goals_made
FROM `topcoat-internal.dbt_kmasters.player_games`
 
where player_id = '{{ filter('player_id') }}'
and season = '{{ filter('season') }}'
order by 1 desc