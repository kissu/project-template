SELECT gametime, sum(attendance)

FROM {{ ref('team_games_base') }}

group by 1
order by 1 asc