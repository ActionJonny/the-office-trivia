const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');

const app = express();

const environment = process.env.NODE_ENV || 'development';
const configuration = require('./knexfile')[environment];
const database = require('knex')(configuration);

app.use(express.static('public'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.set('port', process.env.PORT || 3000);
app.locals.title = "Trivia"

app.get('/', (request, response) => {
  fs.readFile(`${__dirname}/index.html`, (err, file) => {
    response.send(file);
  });
});

app.get('/api/v1/trivia/', async (request, response) => {
  try {
    const triviaQuestions = await database('questions').select();

    response.status(200).json(triviaQuestions);
  } catch (error) {
    response.status(500).json({ error });
  };
});

app.listen(app.get('port'), () => {
  console.log(`${app.locals.title} is running on http://localhost:${app.get('port')}.`);
});

module.exports = app;
