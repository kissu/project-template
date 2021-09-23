{{ config(
	type='line_chart', 
	title='Game Attendance',
	dimensions=[1],
    x_title='Game Time',
    y_title='Attendance',
    y_grid='hide',
    y_axis='hide',
    marker_symbol='square',
    marker_size= 10,
    line_type='spline'
)}}

SELECT gametime, sum(attendance)

FROM {{ ref('team_games_base') }}

group by 1
order by 1 asc