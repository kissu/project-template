SELECT distinct player_id, full_name, sum(field_goals_made) as points_made, sum(field_goals_att) as points_att
FROM `topcoat-internal.dbt_kmasters.player_games`
where team_name = '49ers'
and season = '2015'

group by 1,2
order by 1 desc