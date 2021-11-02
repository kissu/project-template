SELECT avg(free_throws_made) as value

FROM {{ ref('team_games_base') }}