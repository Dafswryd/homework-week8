var pool = require('../queries.js');
var fs = require('fs');

const seeqQuery = fs.readFileSync('db/seeding.sql', { encoding: 'utf8' });
pool.query(seeqQuery, (err, res) => {
    console.log(err);
    console.log('Seeding Complete');
    pool.end();
});