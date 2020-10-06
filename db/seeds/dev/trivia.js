const triviaData = require('../../../triviaQuestionsAnswers');

const createTrivia = async (knex, trivia) => {
  const triviaId = await knex('triviaGames').insert({
    name: trivia.name
  }, 'id');

  let questionPromises = trivia.questions.map(questionObj => {
    return createQuestion(knex, {
      question: questionObj.question,
      answer: questionObj.answer,
      triviaGames_id: triviaId[0]
    });
  });

  return Promise.all(questionPromises);
};

const createQuestion = (knex, question) => {

  return knex('theOfficeTrivia').insert(question);
};

exports.seed = async (knex) => {
  try {
    await knex('theOfficeTrivia').del();
    await knex('triviaGames').del();

    let triviaPromises = triviaData.map(trivia => {
      return createTrivia(knex, trivia);
    });

    return Promise.all(triviaPromises);
  } catch (err) {
    console.log(`Error while seeding data: ${err}`);
  }
}
