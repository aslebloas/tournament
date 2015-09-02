# Swiss Tournament
## Synopsis

This program runs a Swiss Tournament, which means that players are not eliminated when they lose a match, but are paired in each round with opponents having (approximately) the same win-loss records.
There is a test file with 8 tests to pass.

## Folder Structure

* README.md
* tournament.py
* tournament.sql
* tournament_test.py

## Motivation

This Swiss Tournament program has been created as a project for Udacity Full Stack Developer Nanodegree. 

## Further Development

Templates can be created in order to run this tournament in a browser.

## Installation

Python is required.
psycopg2 is required.
Bleach is required.

To get started:

Clone the project:
git clone git://github.com/aslebloas/swiss-tournament.git
cd swiss-tournament

Then, import the tournament.sql file to create the database:
psql
=> \i tournament.sql;
=> \q

Now you can run the program and the tests associated with it:
python tournament.py
python tournament_test.py

Output of the tests:
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings     with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!



## License

Open Source
