$(document).ready(() => {
  fetchQuestions();
});

const fetchQuestions = () => {
  let id = Math.floor(Math.random() * 103) + 1;
  $('.questionCard').remove();
  fetch(`/api/v1/trivia/${id}`)
  .then(response => response.json())
  .then(json => {
    json.forEach(question => {
      appendQuestion(question);
    });
  });
};

const appendQuestion = obj => {
  $('.questionContainer').append(`
    <section class="questionCard">
      <div class="question">Question(in a Dwight voice): ${obj.question}</div>
      <div style="display:none" class="answer">${obj.answer}</div>
      <input class="answerInput"></input>
      <button class="answerSubmit">Submit</button>
    </section>
  `);
};

const appendCorrect = () => {
  $('.questionCard').append(`
    <div class="correct">Correct!</div>
    <img src="./images/TheOfficeSign.svg">
  `);
};

const appendIncorrect = (answer) => {
  $('.questionCard').append(`
    <div class="incorrect">The correct answer is: ${answer} </div>
    <img src="./images/TheOfficeSign.svg">
  `);
};

$('.questionContainer').on('click', '.answerSubmit', function() {
  let answer = $(this).closest('.questionCard')
    .find('.answer')[0].innerText.toLowerCase();
  let userAnswer = $(this).closest('.questionCard')
    .find('.answerInput')[0].value.toLowerCase();
  console.log(answer);
  console.log(userAnswer);
  // need to find a way to compare answers
  // not indexof, 
  answer.indexOf(userAnswer) == 0 ? appendCorrect() : appendIncorrect(answer);
});
