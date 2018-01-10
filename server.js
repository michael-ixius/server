'use strict';

const pg = require('pg');
const fs = require('fs');
const express = require('express');
const cors =require('cors');
const bodyParser = require('body-parser');
const PORT = process.env.PORT || 3000;
const app = express();


const DATABASE_URL = process.env.DATABASE_URL || 'postgres://postgres:1234@localhost:5432/postgres';
const client = new pg.Client(DATABASE_URL);
client.connect();
client.on('error', err => {
  console.error(err);
});
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static('/public'));
app.use(cors());

app.get('/index', (req, res) => res.sendFile('index.html', {root: '/public'}))

app.get('/api/vi/books', (req,res) => {
    client.query(`SELECT book_id,title,author,image_url FROM book_app`)
    .then(result => response.send(results.rows)).catch(console.error);
    console.log('query here',response)
});
app.listen(PORT, () => console.log(`Server started on port ${PORT}!`));