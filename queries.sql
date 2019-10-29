USE baseball;

select *
from teams;
UPDATE teams 
SET abbreviation = 'WAS' 
WHERE id = 19;


SELECT startTime, homeScore, awayScore 
FROM games 
WHERE startTime >= '2019-06-06 00:00:00' AND startTime <= '2019-06-06 17:00:00';

SELECT * 
FROM teams 
WHERE league = 'NL';

SELECT CONCAT(firstName, ' ', lastName) AS fullName, hittingstats.homeRuns
FROM players
JOIN teams 
ON players.currentTeamId = teams.id 
JOIN hittingstats 
ON players.id = hittingstats.playerid
JOIN games
ON hittingstats.gameid = games.id 
WHERE startTime > '2019-06-06'
ORDER  BY hittingstats.homeruns DESC
LIMIT 5;

SELECT CONCAT(firstName, ' ', lastName) AS fullName, 
CONCAT(earnedRuns / inningspitched) AS ERA
FROM players
JOIN teams 
ON players.currentTeamId = teams.id 
JOIN pitchingstats 
ON players.id = pitchingstats.playerid
JOIN games
ON pitchingstats.gameid = games.id 
WHERE startTime > '2019-06-06' AND inningspitched >=4
ORDER  BY pitchingstats.earnedRuns ASC
LIMIT 5;




SELECT CONCAT(firstName, ' ', lastName) AS fullName, hittingstats.doubles
FROM players
JOIN teams 
ON players.currentTeamId = teams.id 
JOIN hittingstats 
ON players.id = hittingstats.playerid
JOIN games
ON hittingstats.gameid = games.id 
WHERE startTime > '2019-06-06'
ORDER  BY hittingstats.doubles DESC
LIMIT 1









