Server [localhost]:
Database [postgres]: homework8
Port [5432]:
Username [postgres]: postgres
Password for user postgres:
psql (16.0)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

homework8=# \dt
         List of relations
 Schema |  Name  | Type  |  Owner
--------+--------+-------+----------
 public | actors | table | postgres
 public | movies | table | postgres
(2 rows)


homework8=# DROP TABLE actors;
DROP TABLE
homework8=# DROP TABLE movies;
DROP TABLE
homework8=# CREATE TABLE actors (actor_id SERIAL PRIMARY KEY, first_name VARCHAR, last_name VARCHAR, gender VARCHAR);
CREATE TABLE
homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name | gender
----------+------------+-----------+--------
(0 rows)


homework8=# CREATE TABLE movies (movie_id SERIAL PRIMARY KEY, movie_name VARCHAR, genre VARCHAR);
CREATE TABLE
homework8=# SELECT * FROM movies;
 movie_id | movie_name | genre
----------+------------+-------
(0 rows)


homework8=# SELECT * FROM actors a JOIN movies m ON a.actor_id=m.movie_id;
 actor_id | first_name | last_name | gender | movie_id | movie_name | genre
----------+------------+-----------+--------+----------+------------+-------
(0 rows)


homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name |  gender
----------+------------+-----------+-----------
        1 | Iko        | Uwais     | Laki Laki
(1 row)


homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name |  gender
----------+------------+-----------+-----------
        1 | Iko        | Uwais     | Laki Laki
(1 row)


homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name |  gender
----------+------------+-----------+-----------
        1 | Iko        | Uwais     | Laki Laki
        5 | Jefri      | Nichol    | Laki Laki
(2 rows)


homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name |  gender
----------+------------+-----------+-----------
        1 | Iko        | Uwais     | Laki Laki
        5 | Jefri      | Nichol    | Laki Laki
        4 | Chelsea    | Islan     | Perempuan
(3 rows)


homework8=# SELECT * FROM actors;
 actor_id | first_name | last_name |  gender
----------+------------+-----------+-----------
        1 | Iko        | Uwais     | Laki Laki
        5 | Jefri      | Nichol    | Laki Laki
        4 | Chelsea    | Islan     | Perempuan
        3 | Pevita     | Pearch    | Perempuan
        2 | Joe        | Taslim    | Laki Laki
(5 rows)


homework8=# SELECT * FROM movies;
 movie_id | movie_name | genre
----------+------------+--------
        1 | The Raid   | Action
(1 row)


homework8=# SELECT * FROM actors a JOIN movies m ON a.actor_id=m.movie_id;
 actor_id | first_name | last_name |  gender   | movie_id | movie_name | genre
----------+------------+-----------+-----------+----------+------------+--------
        1 | Iko        | Uwais     | Laki Laki |        1 | The Raid   | Action
(1 row)


homework8=# SELECT * FROM actors a JOIN movies m ON a.actor_id=m.movie_id;
 actor_id | first_name | last_name |  gender   | movie_id |  movie_name   | genre
----------+------------+-----------+-----------+----------+---------------+--------
        1 | Iko        | Uwais     | Laki Laki |        1 | The Raid      | Action
        2 | Joe        | Taslim    | Laki Laki |        2 | Mortal Kombat | Action
(2 rows)


homework8=# SELECT * FROM actors a JOIN movies m ON a.actor_id=m.movie_id;
 actor_id | first_name | last_name |  gender   | movie_id |  movie_name   | genre
----------+------------+-----------+-----------+----------+---------------+--------
        1 | Iko        | Uwais     | Laki Laki |        1 | The Raid      | Action
        2 | Joe        | Taslim    | Laki Laki |        2 | Mortal Kombat | Action
        3 | Pevita     | Pearch    | Perempuan |        3 | Sri Asih      | Action
(3 rows)


homework8=# SELECT * FROM actors a JOIN movies m ON a.actor_id=m.movie_id;
 actor_id | first_name | last_name |  gender   | movie_id |  movie_name   |  genre
----------+------------+-----------+-----------+----------+---------------+---------
        1 | Iko        | Uwais     | Laki Laki |        1 | The Raid      | Action
        2 | Joe        | Taslim    | Laki Laki |        2 | Mortal Kombat | Action
        3 | Pevita     | Pearch    | Perempuan |        3 | Sri Asih      | Action
        4 | Chelsea    | Islan     | Perempuan |        4 | Rudy Habibi   | Romance
        5 | Jefri      | Nichol    | Laki Laki |        5 | Dear Nathan   | Romance
(5 rows)


homework8=# SELECT * FROM movies;
 movie_id |  movie_name   |  genre
----------+---------------+---------
        1 | The Raid      | Action
        2 | Mortal Kombat | Action
        3 | Sri Asih      | Action
        4 | Rudy Habibi   | Romance
        5 | Dear Nathan   | Romance
(5 rows)