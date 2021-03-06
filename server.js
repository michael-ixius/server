'use strict';
const pg = require('pg');
const fs = require('fs');
const express = require('express');
const cors =require('cors');
require('dotenv').config()


const bodyParser = require('body-parser');
const PORT = process.env.PORT || 3000;
const app = express();


const DATABASE_URL = process.env.DATABASE_URL || 'postgres://postgres:1234@localhost:5432/books_app';
const client = new pg.Client(DATABASE_URL);
client.on('error', console.error)
client.connect();

app.use(cors());



app.get(`/api/v1/books`,(req,res) =>{

  client.query(`
  SELECT book_id, author, title, image_url FROM books;
`).then(result => res.send(result.rows))
    .catch(err => console.error(err))
})

app.get(`/api/v1/books/:id`, (req,res) => {
  client.query(`
  SELECT * FROM books
  WHERE book_id = ${req.params.id}`).then(result => res.send(result.rows[0]))
})



client.on('error', err => {
  console.error(err);
});




app.listen(PORT, () => console.log(`Server started on port ${PORT}!`));

// thing
