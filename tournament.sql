-- Table definitions for the tournament project.

-- Delete database if it already exists
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

-- Players Table
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT
    );

-- Matches Table
CREATE TABLE matches ( 
    match_id SERIAL,
    winner INTEGER references players(id),
    loser INTEGER references players(id)
    );

CREATE VIEW standings_view as
    SELECT id, name,
        (SELECT count(*)
            FROM matches
            WHERE players.id=matches.winner)
            AS wins,
        (SELECT count(*)
            FROM matches
            WHERE players.id=matches.winner
            OR players.id=matches.loser)
            AS matches
    FROM players
    ORDER BY wins DESC;
