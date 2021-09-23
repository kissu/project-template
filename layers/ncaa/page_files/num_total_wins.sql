{{ config(
	type='big_number', 
	title='Total Wins'
)}}

SELECT sum(case when win = true then 1 else 0 end) as value

FROM {{ ref('team_games_base') }}