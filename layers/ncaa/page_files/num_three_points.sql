{{ config(
	type='big_number', 
	title='Average 3 Point Shots Made'
)}}

SELECT avg(three_points_made) as value

FROM {{ ref('team_games_base') }}