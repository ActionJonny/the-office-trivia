exports.up = function (knex) {
  return knex.schema
    .createTable('triviaGames', function (table) {
      table.increments('id').primary();
      table.string('name').notNullable();

      table.timestamps(true, true);
    })
    .createTable('theOfficeTrivia', function (table) {
      table.increments('id').primary();
      table.string('question').notNullable();
      table.string('answer').notNullable();
      table.integer('triviaGames_id').unsigned();
      table.foreign('triviaGames_id')
        .references('triviaGames.id');

      table.timestamps(true, true);
    })
};

exports.down = function (knex) {
  return knex.schema
    .dropTable('theOfficeTrivia')
    .dropTable('triviaGames')
};
