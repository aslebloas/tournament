# Swiss Tournament
## Synopsis

This program runs a Swiss Tournament, which means that players are not eliminated when they lose a match, but are paired in each round with opponents having (approximately) the same win-loss records.

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

Then, you need to create the databases:
psql
=> \c tournament;
=> \i tournament.sql;
=> \q

Now you can run the program and the tests associated with it:
python tournament.py
python tournament_test.py

## License

Open Source
