$(document).ready(() => {
  fetchQuestions();
});

const fetchQuestions = () => {
  fetch('/api/v1/trivia', {
    async:true,
  })
  .then(response => response.json())
  .then(json => {
    json.forEach(question => {
      appendQuestion(question);
    });
  });
};

const appendQuestion = obj => {
  $('.questionsContainer').append(`
    <section class="questionCard">
      <div>Question(in Dwight voice): ${obj.question}</div>
      <div>Answer: ${obj.answer}</div>
    </section>
  `);
};
