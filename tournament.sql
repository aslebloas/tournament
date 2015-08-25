-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Players Table
CREATE TABLE players ( id SERIAL PRIMARY KEY, name TEXT );

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

-- Tournament Table
-- CREATE TABLE tournament (
--     id SERIAL PRIMARY KEY,
--     name TEXT,
--     time TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- Rounds Table
-- CREATE TABLE rounds (
--     round_id SERIAL,
--     tournament_id INTEGER references tournament(id));



-- Standing view
-- SELECT FROM players count(winner) as wins WHERE winner = ('%s'), (player.id),

-- Insert players for testing
-- INSERT INTO players (name) values ('Anne');
-- INSERT INTO players (name) values ('Sophie');
-- INSERT INTO players (name) values ('Amandine');
-- INSERT INTO players (name) values ('Annaick');
-- INSERT INTO players (name) values ('Katell');
-- INSERT INTO players (name) values ('Jean');
-- INSERT INTO players (name) values ('Paul');
-- INSERT INTO players (name) values ('Erwan');
-- INSERT INTO players (name) values ('Sebastien');
-- INSERT INTO players (name) values ('Carol');
-- INSERT INTO players (name) values ('Isabelle');
-- INSERT INTO players (name) values ('Celia');
-- INSERT INTO players (name) values ('Simon');
-- INSERT INTO players (name) values ('Agnes');
-- INSERT INTO players (name) values ('Lila');
-- INSERT INTO players (name) values ('Irene');

-- INSERT INTO matches (winner, loser) values (1, 2);
-- INSERT INTO matches (winner, loser) values (3, 4);
-- INSERT INTO matches (winner, loser) values (5, 6);
-- INSERT INTO matches (winner, loser) values (7, 8);
-- INSERT INTO matches (winner, loser) values (9, 10);
-- INSERT INTO matches (winner, loser) values (11, 12);
-- INSERT INTO matches (winner, loser) values (13, 14);
-- INSERT INTO matches (winner, loser) values (15, 16);
