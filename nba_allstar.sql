CREATE TABLE allstar_players(
	Year INTEGER, 
	Conference VARCHAR(10), 
	League_ID VARCHAR(5), 
	Games_Played INTEGER, 
	Minutes INTEGER, 
	Points INTEGER,
    Offensive_Rebounds INTEGER, 
	Defensive_Rebounds INTEGER, 
	Total_Rebounds INTEGER, 
	Assists INTEGER,
    Steals INTEGER, 
	Blocks INTEGER, 
	Turnovers INTEGER, 
	Personal_Fouls INTEGER,
    Field_Goals_Attempted INTEGER, 
	Field_Goals_Made INTEGER, 
	Free_Throws_Attempted INTEGER,
    Free_Throw_Made INTEGER, 
	Three_Points_Attempted INTEGER, 
	Three_Points_Made INTEGER,
    Player VARCHAR(50)
);

CREATE TABLE allstar_games(
	Year INTEGER,
	Player VARCHAR(50),
	Position VARCHAR(5),
	Height VARCHAR(50),
	Weight INTEGER,
	Team VARCHAR(50),
	Selection VARCHAR(100),
	NBA_Draft_Status VARCHAR(100),
	Home_Country VARCHAR(100)
);

SELECT * FROM allstar_players;

SELECT * FROM allstar_games;


SELECT 
	p.year,
	p.player,
	g.position,
	g.height,
	g.weight,
	g.team,
	g.selection,
	g.nba_draft_status,
	g.home_country,
	p.games_played,
	p.minutes,
	p.points,
	p.offensive_rebounds,
	p.total_rebounds,
	p.total_rebounds,
	p.assists,
	p.steals,
	p.blocks,
	p.turnovers,
	p.personal_fouls,
	p.field_goals_attempted,
	p.field_goals_made,
	p.free_throws_attempted,
	p.free_throw_made,
	p.three_points_attempted,
	p.three_points_made
FROM allstar_players p
INNER JOIN allstar_games g ON g.player = p.player;

