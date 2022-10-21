require('dotenv').config();
module.exports = {
  dialect: process.env.DB_CONNECTION,
  port: process.env.DB_PORT,
  //single DB
  HOST: (process.env.APP_ENV === 'DEV') ? process.env.DB_HOST_DEV : process.env.DB_HOST_MASTER,
  USER: process.env.DB_USERNAME,
  PASSWORD: process.env.DB_PASSWORD,
  DB: process.env.DB_DATABASE,
  // replication DB
  replication: {
    read: [
      { host: (process.env.APP_ENV === 'DEV') ? process.env.DB_HOST_DEV : process.env.DB_HOST_SLAVE, username: process.env.DB_USERNAME, password: process.env.DB_PASSWORD },
      { host: (process.env.APP_ENV === 'DEV') ? process.env.DB_HOST_DEV : process.env.DB_HOST_SLAVE, username: process.env.DB_USERNAME, password: process.env.DB_PASSWORD },
    ],
    write: { host: (process.env.APP_ENV === 'DEV') ? process.env.DB_HOST_DEV : process.env.DB_HOST_MASTER, username: process.env.DB_USERNAME, password: process.env.DB_PASSWORD}
  },
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
