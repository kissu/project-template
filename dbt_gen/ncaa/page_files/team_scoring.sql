SELECT season, team_name, games_played, average_points_per_game

FROM `topcoat-internal.dbt_kmasters.team_scoring_stats`
where season = '2015'
and team_name = '49ers'