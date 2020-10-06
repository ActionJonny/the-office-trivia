$(document).ready(() => {
  fetchQuestions();
});

const fetchQuestions = () => {
  $('.questionCard').remove();
  fetch(`/api/v1/trivia`)
  .then(response => response.json())
  .then(json => {
    let randomNumber = Math.floor(Math.random() * (json.length - 0));

    appendQuestion(json[randomNumber]);
  });
};

const appendQuestion = obj => {
  $('.questionContainer').append(`
    <section class="questionCard">
      <div class="question">Question(in a Dwight voice): ${ obj.question }</div>
      <div style="display:none" class="answer">${ obj.answer }</div>
      <input class="answerInput"></input>
      <button class="answerSubmit">Submit</button>
    </section>
  `);
};

const appendCorrect = () => {
  let randomNumber = Math.floor(Math.random() * (10 - 1 + 1) + 1);

  $('.questionCard').append(`
    <div class="correct">Correct!</div>
    <img src="./images/correct/${ randomNumber }.svg">
    <button class="nextQuestion">Next Question</button>
  `);
};

const appendIncorrect = (answer) => {
  let randomNumber = Math.floor(Math.random() * (10 - 1 + 1) + 1);

  $('.questionCard').append(`
    <div class="incorrect">The correct answer is: ${ answer } </div>
    <img src="./images/incorrect/${ randomNumber }.svg">
    <button class="nextQuestion">Next Question</button>
  `);
};

const compareAnswers = (answer, userAnswer) => {
  let compareArr = [];
  for(i = 0; i < userAnswer.length; i++) {
    answer.toLowerCase()[i] == userAnswer.toLowerCase()[i]
      ? compareArr.push(true) : compareArr.push(false);
  };

  compareArr.includes(false) ? appendIncorrect(answer) : appendCorrect();
};

$('.questionContainer').on('click', '.answerSubmit', function() {
  let answer = $(this).closest('.questionCard')
    .find('.answer')[0].innerText;
  let userAnswer = $(this).closest('.questionCard')
    .find('.answerInput')[0].value;

  $('.answerSubmit')[0].disabled = true;

  compareAnswers(answer, userAnswer);
});

$('.questionContainer').on('click', '.nextQuestion', function() {
  fetchQuestions();
});
