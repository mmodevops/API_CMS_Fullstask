module.exports = (sequelize, Sequelize) => {
  const Feature = sequelize.define("features", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: Sequelize.STRING
    }
  });

  return Feature;
};
