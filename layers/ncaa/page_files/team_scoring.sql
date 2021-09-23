{{ config(
	type='table', 
	title='Team Scoring Stats',
  sortable=true,
  searchable=false,
  download_csv=false
)}}

SELECT season, team_name, games_played, average_points_per_game

FROM `topcoat-internal.dbt_kmasters.team_scoring_stats`
where season = '{{ filter('season') }}'
and team_name = '{{ filter('team_name') }}'