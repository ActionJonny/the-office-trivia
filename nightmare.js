const Nightmare = require('nightmare');
const fs = require('fs');
const util = require('util');

const nightmare = Nightmare({ show: false });

nightmare
  .viewport(500, 500)
  .goto('https://thoughtcatalog.com/samantha-newman/2020/04/the-office-trivia-questions-answers/')
  .evaluate(() => {
    let arr = [];
    let list = document.querySelector('.box-content');
    let listLength = list.querySelectorAll('p').length;

    for (var i = 0; i < listLength; i++) {
      let question = list.querySelectorAll('p')[i].innerText.split('\:')[1];
      let answer = list.querySelectorAll('p')[i].innerText.split('\:')[2];
      let triviaObject = {
        question,
        answer
      };
      arr.push(triviaObject);
    }

    return arr;
  })
  .end()
  .then((result) => {
    fs.writeFileSync('triviaQuestionsAnswers.js', util.inspect(result, { maxArrayLength: 1600 }));
  })
  .catch((error) => {
    fs.writeFileSync('Search failed:', error);
  });
