with games as (
  select   
  season,
  cast(win as string) as win,
  count(*) as wins
from `topcoat-internal.dbt_kmasters.teams_games`

where team_name = '49ers'
group by 1,2
order by 1)


SELECT * FROM
(
  -- #1 from_item
select 
  win, 
  season,
  wins
from games
)
PIVOT
(
  -- #2 aggregate
  sum(wins) AS total
  -- #3 pivot_column
  FOR win in ('true', 'false')
)