SELECT avg(three_points_made) as value

FROM {{ ref('team_games_base') }}