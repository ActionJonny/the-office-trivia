const triviaData = require('../../../triviaQuestionsAnswers');

const createTrivia = async (knex, trivia) => {
  const triviaId = await knex('trivias').insert({
    name: trivia.name
  }, 'id');

  let questionPromises = trivia.questions.map(questionObj => {
    console.log(triviaId, 'triviaId');
    return createQuestion(knex, {
      question: questionObj.question,
      answer: questionObj.answer,
      trivias_id: triviaId[0]
    });
  });

  return Promise.all(questionPromises);
};

const createQuestion = (knex, question) => {
  return knex('questions').insert(question);
};

exports.seed = async (knex) => {
  try {
    await knex('questions').del();
    await knex('trivias').del();

    let triviaPromises = triviaData.map(trivia => {
      return createTrivia(knex, trivia);
    });

    return Promise.all(triviaPromises);
  } catch (err) {
    console.log(`Error while seeding data: ${err}`);
  }
}
