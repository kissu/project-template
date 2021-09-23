{{ config(
	type='bar_chart', 
	title='Game Outcome by Season',
	dimensions=[1],
  x_grid='hide',
  x_axis='show',
  x_labels='show',
  y_grid='show',
  y_axis='show',
  y_labels='show',
  bar_type='group',
    legend='hide',
    x_title='Season',
    y_title='Games Won or Lost'
)}}

with games as (
  select   
  season,
  cast(win as string) as win,
  count(*) as wins
from `topcoat-internal.dbt_kmasters.teams_games`

where team_name = '{{ filter('team_name') }}'
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