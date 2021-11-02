SELECT scheduled_date, field_goals_att, field_goals_made
FROM `topcoat-internal.dbt_kmasters.player_games`
 
where player_id = 'None'
and season = '2015'
order by 1 desc