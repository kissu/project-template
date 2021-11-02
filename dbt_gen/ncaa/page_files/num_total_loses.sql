SELECT sum(case when win = false then 1 else 0 end) as value

FROM {{ ref('team_games_base') }}