{{ config(
	type='big_number', 
	title='Total Loses',
	dimensions=[1],
    measures=[1]
)}}

SELECT sum(case when win = false then 1 else 0 end) as value

FROM {{ ref('team_games_base') }}