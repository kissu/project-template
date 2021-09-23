 {{ config(
	type='big_number', 
	title='Average Free Throws Made'
)}}

SELECT avg(free_throws_made) as value

FROM {{ ref('team_games_base') }}