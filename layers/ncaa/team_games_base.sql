SELECT *

FROM `topcoat-internal.dbt_kmasters.teams_games`

where team_name = '{{ filter('team_name') }}'
and season = '{{ filter('season') }}'