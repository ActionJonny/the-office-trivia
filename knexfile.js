module.exports = {
  development: {
    client: 'pg',
    connection: 'postgres://localhost/officeTrivia',
    migrations: {
      directory: './db/migrations'
    },
    useNullAsDefault: true,
    seeds: {
      directory: './db/seeds/dev'
    },
  },

  production: {
    client: 'pg',
    connection: process.env.DATABASE_URLgiti ,
    ssl: {
      rejectUnauthorized: false
    },
    migrations: {
      directory: './db/migrations'
    },
    useNullAsDefault: true,
    seeds: {
      directory: './db/seeds/dev'
    }
  }
};
