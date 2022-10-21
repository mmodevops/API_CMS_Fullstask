module.exports = (sequelize, Sequelize) => {
  const Game = sequelize.define("games", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: Sequelize.STRING
    },
    itunes_id: {
      type: Sequelize.INTEGER
    },
    android_package_name: {
      type: Sequelize.STRING
    },
    icon: {
      type: Sequelize.STRING
    },
    status: {
      type: Sequelize.INTEGER
    }
  },{
      freezeTableName: true,
      // timestamps: false
  });

  return Game;
};
