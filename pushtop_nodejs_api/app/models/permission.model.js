module.exports = (sequelize, Sequelize) => {
  const Permission = sequelize.define("permissions", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    subject: {
      type: Sequelize.STRING
    },
    action: {
      type: Sequelize.STRING
    },
    featureId: {
      type: Sequelize.INTEGER
    }
  });

  return Permission;
};
