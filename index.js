var express = require('express');
var app = express();
var pool = require('./queries.js');

// UNTUK MENAMPILKAN DATA SELURUH LIST FILM
app.get('/movies/names', (req, res) => {
    pool.query('SELECT movie_name FROM movies', (err, result) => {
        if (err) {
            throw err;
        }
        const movieNames = result.rows.map(row => row.movie_name);
        res.json(movieNames);
    });
});

// UNTUK MENAMPILKAN DATA FILM TERTENTU BREDASARKAN ID
app.get('/movies/:id', (req, res) => {
    const movieId = req.params.id;
    const query = {
        text: 'SELECT * FROM movies WHERE movie_id = $1',
        values: [movieId],
    };

    pool.query(query, (err, result) => {
        if (err) {
            throw err;
        }
            res.json(result.rows);
    });
});

// UNTUK MENAMPILKAN DATA LIST CATEGORY ATAU GENRE
app.get('/genres', (req, res) => {
    pool.query('SELECT DISTINCT genre FROM movies', (err, result) => {
        if (err) {
            throw err;
        }

        const genres = result.rows.map(row => row.genre);
        res.json(genres);
    });
});

// UNTUK MENAMPILKAN DATA LIST FILM BERDASARKAN CATEGORY ATAU GENRE
app.get('/movies/genre/:genre', (req, res) => {
    const genre = req.params.genre;
    const query = {
        text: 'SELECT * FROM movies WHERE genre = $1',
        values: [genre],
    };

    pool.query(query, (err, result) => {
        if (err) {
            throw err;
        }

        res.json(result.rows);
    });
});

pool.connect((err, res) => {
    console.log(err);
    console.log('coneected');
});

app.listen(3000);