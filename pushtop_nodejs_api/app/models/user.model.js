module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define("users", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    username: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    password: {
      type: Sequelize.STRING
    },
    fullname: {
      type: Sequelize.STRING
    },
    roleId: {
      type: Sequelize.INTEGER
    },
    phone: {
      type: Sequelize.STRING
    },
    telegramId: {
      type: Sequelize.STRING
    },
    last_login: {
      type: Sequelize.STRING
    },
    avatar: {
      type: Sequelize.DATE
    },
    active: {
      type: Sequelize.STRING
    }
  });

  return User;
};
