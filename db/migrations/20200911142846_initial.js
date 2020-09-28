exports.up = function (knex) {
  return knex.schema
    .createTable('trivias', function (table) {
      table.increments('id').primary();
      table.string('name').notNullable();

      table.timestamps(true, true);
    })
    .createTable('questions', function (table) {
      table.increments('id').primary();
      table.string('question').notNullable();
      table.string('answer').notNullable();
      table.integer('trivias_id').unsigned();
      table.foreign('trivias_id')
        .references('trivias.id');

      table.timestamps(true, true);
    })
};

exports.down = function (knex) {
  return knex.schema
    .dropTable('questions')
    .dropTable('trivias')
};
