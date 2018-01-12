'use strict';
const pg = require('pg');
const fs = require('fs');
const express = require('express');
require('dotenv').config()

const cors =require('cors');

const bodyParser = require('body-parser');
const PORT = process.env.PORT || 3000;
const app = express();


const DATABASE_URL = 'postgres://qrjppdndchkjrx:5c174db10d055a79a15ea0297433997e4453dc444c3ec8776988493ab718de5e@ec2-54-225-255-132.compute-1.amazonaws.com:5432/d5rfddp4ou0g8' || 'postgres://postgres:1234@localhost:5432/books_app';
const client = new pg.Client(DATABASE_URL);
client.connect();

app.use(cors());
app.get(`/api/v1/books`,(req,res) =>{

  client.query(`
  SELECT book_id, author, title, image_url FROM books;
`).then(result => res.send(result.rows))
    .catch(err => console.error(err))
})



client.on('error', err => {
  console.error(err);
});

app.use(express.static('/public'));


app.listen(PORT, () => console.log(`Server started on port ${PORT}!`));

// thing
